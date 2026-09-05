#!/usr/bin/env python3
"""Decode, validate, and report Professor Pac-Man PPQ question families."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
import re
import zipfile

from analyze_question_banks import BANK_BASE, PPQ_COUNT, decode_bank


INLINE_WORD = {0x0109, 0x011A, 0x0125}
INLINE_BYTE = {0x0112}
BRANCH = {0x03E2}
CONDITIONAL_BRANCH = {0x03EA, 0x0410}
INLINE_STRING = {0x0405}
INLINE_CASES = {0x0436}
RETURN = 0x00FD

TOKEN_NAMES = {
    0x00FD: "XT_RETURN",
    0x0109: "XT_LIT",
    0x0112: "XT_LITbyte",
    0x011A: "XT_BARRAY",
    0x0125: "XT_ARRAY",
    0x012A: "XT_0",
    0x0130: "XT_1",
    0x015A: "XT_plus",
    0x0532: "XT_SBbang",
    0x053A: "XT_BONE",
    0x053F: "XT_BZERO",
    0x055C: "XT_Bbang",
    0x0561: "XT_bang",
    0x1B32: "XT_RANDOM_BELOW",
    0x8B2B: "CFG0_XT_SET_QUESTION_VARIANT_BYTE",
}

FEATURE_TOKENS = {
    0x8B4F: "random correct slot",
    0x8B7B: "distinct second slot",
    0x8C12: "remaining third slot",
    0x8C37: "scene setup",
    0x8C50: "action completion",
    0x8C61: "cross-slot object update",
    0x2302: "child-action join",
    0x15F7: "cooperative yield",
    0x1DF3: "object renderer",
    0x1E0C: "object draw",
    0x2CF2: "descriptor draw",
    0x1BDF: "task-vector animation",
}

# Family identity is the counted action-list address retained by the repeat
# filter. Names describe ROM-resident prompts and demonstrated presentation.
FAMILY_NAMES = {
    (1, 0x5395): "MIRROR_FLOCK",
    (1, 0x59B5): "FILL_IN_THE_BLANK",
    (1, 0x7AF1): "DIALED_NUMBER_MEMORY",
    (2, 0x5875): "COLORED_CIRCLE_COUNT",
    (2, 0x5C31): "LINE_INTERSECTION_COUNT",
    (2, 0x67A5): "FIGURE_MIRROR_MATCH",
    (2, 0x7A1E): "PICTURE_COUNT_MEMORY",
    (2, 0x7CA6): "IMAGE_MIRROR_MATCH",
    (3, 0x51E2): "COMPLETE_FIGURE_A",
    (3, 0x5D5A): "IMAGE_MIRROR_MATCH_A",
    (3, 0x6717): "IMAGE_MIRROR_MATCH_B",
    (3, 0x7934): "JUGGLER_MEMORY",
    (4, 0x4E34): "COMPLETE_FIGURE_A",
    (4, 0x5827): "COMPLETE_FIGURE_B",
    (4, 0x73FC): "LEFT_RIGHT_TURNS",
    (5, 0x5463): "VISUAL_ANALOGY",
    (5, 0x6822): "OPERATION_SEQUENCE",
    (5, 0x6E97): "NUMBER_TRANSFORMATION",
    (5, 0x7996): "NUMBER_PROGRESSION",
    (5, 0x7E6B): "IMAGE_MIRROR_MATCH",
    (6, 0x62F4): "HAND_PLACEMENT_MEMORY",
    (6, 0x761E): "FIGURE_SERIES_MEMORY",
    (7, 0x6383): "BOX_MEMBERSHIP",
    (7, 0x6E33): "IMAGE_MIRROR_PAIR",
    (7, 0x7D6D): "OBJECT_COUNT_MEMORY",
    (8, 0x6014): "VISUAL_PROGRESSION",
    (8, 0x6ACF): "IMAGE_MIRROR_MATCH",
    (8, 0x7DCD): "TABLE_SETTING_MEMORY",
    (9, 0x7307): "COMPLETE_FIGURE_A",
    (9, 0x7544): "COMPLETE_FIGURE_B",
    (9, 0x77BB): "COMPLETE_FIGURE_C",
    (9, 0x7A38): "COMPLETE_FIGURE_D",
    (9, 0x7DB1): "COMPLETE_FIGURE_E",
    (10, 0x669C): "UNFOLDED_DIE",
    (10, 0x77C1): "VISUAL_ANALOGY",
    (11, 0x7091): "CITY_OBJECT_COUNT",
    (11, 0x7675): "CITY_SCENE_REASONING",
    (12, 0x79F4): "GROUP_MEMBERSHIP",
    (13, 0x5101): "CUBE_COUNT",
    (13, 0x7A92): "ODD_ONE_OUT",
    (13, 0x7E5F): "VISUAL_PROGRESSION",
    (14, 0x5505): "VISUAL_PROGRESSION",
    (14, 0x5751): "VISUAL_ANALOGY",
    (14, 0x6373): "DOG_MIRROR_MATCH",
    (14, 0x71C5): "DEER_MIRROR_MATCH",
}


@dataclass(frozen=True)
class Cell:
    address: int
    token: int
    operand: int | None
    end: int


@dataclass(frozen=True)
class Initializer:
    address: int
    cells: tuple[Cell, ...]
    action_list: int
    tiers: tuple[int, ...]


@dataclass(frozen=True)
class ThreadCell:
    address: int
    token: int
    operand: int | None
    payload: tuple[int, ...]
    table: tuple[int, ...]
    end: int


@dataclass(frozen=True)
class Definition:
    address: int
    cells: tuple[ThreadCell, ...]
    calls: tuple[int, ...]
    literals: tuple[int, ...]


@dataclass(frozen=True)
class Family:
    bank: int
    name: str
    action_list: int
    actions: tuple[int, ...]
    initializers: tuple[Initializer, ...]
    definitions: tuple[Definition, ...]
    tokens: frozenset[int]
    token_counts: tuple[tuple[int, int], ...]
    prompts: tuple[tuple[int, str], ...]


class AddressSpace:
    def __init__(self, archive: zipfile.ZipFile, bank: int):
        self.question = archive.read(f"ppq{bank}")
        self.fixed: dict[int, int] = {}
        for name, base in (
            ("pps1", 0x0000),
            ("pps2", 0x2000),
            ("pps3", 0x8000),
            ("pps4", 0xA000),
            ("pps9", 0xC000),
        ):
            image = archive.read(name)
            self.fixed.update((base + index, value) for index, value in enumerate(image))

    def byte(self, address: int) -> int | None:
        if 0x4000 <= address < 0x8000:
            return self.question[address - BANK_BASE]
        return self.fixed.get(address)

    def word(self, address: int) -> int | None:
        low = self.byte(address)
        high = self.byte(address + 1)
        if low is None or high is None:
            return None
        return low | high << 8

    def counted_ascii(self, address: int) -> str | None:
        count = self.byte(address)
        if count is None or not 4 <= count <= 80:
            return None
        values = [self.byte(address + 1 + index) for index in range(count)]
        if any(value is None or not 0x20 <= value < 0x7F for value in values):
            return None
        text = bytes(value for value in values if value is not None).decode("ascii")
        return text if any(character.isalpha() for character in text) else None


def decode_initializer(space: AddressSpace, address: int, tiers: tuple[int, ...]) -> Initializer:
    if space.byte(address) != 0xCF:
        raise ValueError(f"initializer ${address:04X} is not a colon entry")
    cursor = address + 1
    cells: list[Cell] = []
    for _ in range(64):
        token_address = cursor
        token = space.word(cursor)
        if token is None:
            raise ValueError(f"initializer ${address:04X} leaves mapped memory")
        cursor += 2
        operand = None
        if token in INLINE_WORD:
            operand = space.word(cursor)
            if operand is None:
                raise ValueError(f"initializer ${address:04X} has a truncated word operand")
            cursor += 2
        elif token in INLINE_BYTE:
            operand = space.byte(cursor)
            if operand is None:
                raise ValueError(f"initializer ${address:04X} has a truncated byte operand")
            cursor += 1
        cells.append(Cell(token_address, token, operand, cursor))
        if token == RETURN:
            break
    else:
        raise ValueError(f"initializer ${address:04X} does not terminate")

    action_lists = [
        cell.operand
        for cell in cells
        if cell.token == 0x0109
        and cell.operand is not None
        and 0x4000 <= cell.operand < 0x8000
    ]
    if not action_lists:
        raise ValueError(f"initializer ${address:04X} does not return an action list")
    action_list = action_lists[-1]
    count = space.byte(action_list)
    if count != 4:
        raise ValueError(f"action list ${action_list:04X} has count {count}, expected 4")
    return Initializer(address, tuple(cells), action_list, tiers)


def decode_definition(space: AddressSpace, entry: int) -> Definition:
    if space.byte(entry) != 0xCF:
        raise ValueError(f"action ${entry:04X} is not a colon entry")

    pending = [entry + 1]
    cells: dict[int, ThreadCell] = {}
    calls: set[int] = set()
    literals: set[int] = set()
    while pending:
        address = pending.pop()
        if address in cells:
            continue
        token = space.word(address)
        if token is None:
            raise ValueError(f"thread at ${address:04X} leaves mapped memory")
        cursor = address + 2
        operand = None
        payload: tuple[int, ...] = ()
        table: tuple[int, ...] = ()
        successors: tuple[int, ...] | None = None

        if token in INLINE_WORD:
            operand = space.word(cursor)
            if operand is None:
                raise ValueError(f"truncated operand at ${address:04X}")
            literals.add(operand)
            cursor += 2
        elif token in INLINE_BYTE:
            operand = space.byte(cursor)
            if operand is None:
                raise ValueError(f"truncated byte operand at ${address:04X}")
            cursor += 1
        elif token in BRANCH | CONDITIONAL_BRANCH:
            operand = space.word(cursor)
            if operand is None:
                raise ValueError(f"truncated branch at ${address:04X}")
            cursor += 2
            successors = ((operand,) if token in BRANCH else (cursor, operand))
        elif token in INLINE_STRING:
            count = space.byte(cursor)
            if count is None:
                raise ValueError(f"truncated string at ${address:04X}")
            values = tuple(space.byte(cursor + index) for index in range(count + 1))
            if any(value is None for value in values):
                raise ValueError(f"truncated string at ${address:04X}")
            payload = tuple(value for value in values if value is not None)
            cursor += count + 1
        elif token in INLINE_CASES:
            operand = space.word(cursor)
            cursor += 2
            if (
                operand is None
                or operand < cursor
                or operand > cursor + 0x400
                or (operand - cursor) & 1
            ):
                raise ValueError(f"invalid CASES table at ${address:04X}")
            values = tuple(space.word(table_address) for table_address in range(cursor, operand, 2))
            if any(value is None for value in values):
                raise ValueError(f"truncated CASES table at ${address:04X}")
            table = tuple(value for value in values if value is not None)
            cursor = operand

        if 0x4000 <= token < 0x8000 and space.byte(token) == 0xCF:
            calls.add(token)
        for target in table:
            if 0x4000 <= target < 0x8000 and space.byte(target) == 0xCF:
                calls.add(target)

        cells[address] = ThreadCell(address, token, operand, payload, table, cursor)
        if token == RETURN:
            successors = ()
        pending.extend((cursor,) if successors is None else successors)

    ordered = tuple(cells[address] for address in sorted(cells))
    covered = {entry}
    for cell in ordered:
        covered.update(range(cell.address, cell.end))
    high = max(cell.end for cell in ordered)
    if covered != set(range(entry, high)):
        raise ValueError(f"definition ${entry:04X} has an unclassified byte gap")
    return Definition(entry, ordered, tuple(sorted(calls)), tuple(sorted(literals)))


def decode_action_graph(
    space: AddressSpace, actions: tuple[int, ...]
) -> tuple[
    tuple[Definition, ...],
    frozenset[int],
    tuple[tuple[int, int], ...],
    tuple[tuple[int, str], ...],
]:
    definitions = list(actions)
    decoded: dict[int, Definition] = {}
    literal_references: set[int] = set()

    while definitions:
        entry = definitions.pop()
        if entry in decoded:
            continue
        definition = decode_definition(space, entry)
        decoded[entry] = definition
        definitions.extend(definition.calls)
        literal_references.update(definition.literals)

    ordered_definitions = tuple(decoded[address] for address in sorted(decoded))
    tokens = [cell.token for definition in ordered_definitions for cell in definition.cells]

    prompts = tuple(
        (address, text)
        for address in sorted(literal_references)
        if (text := space.counted_ascii(address)) is not None
    )
    token_counts = tuple(
        (token, tokens.count(token))
        for token in sorted(set(tokens))
    )
    return ordered_definitions, frozenset(tokens), token_counts, prompts


def decode_families(archive_path: Path) -> list[Family]:
    families: list[Family] = []
    with zipfile.ZipFile(archive_path, "r") as archive:
        for bank_number in range(1, PPQ_COUNT + 1):
            name = f"ppq{bank_number}"
            bank = decode_bank(name, archive.read(name))
            tier_map: dict[int, list[int]] = {}
            for tier, bucket in enumerate(bank.buckets):
                for address in bucket.initializers:
                    tier_map.setdefault(address, []).append(tier)

            space = AddressSpace(archive, bank_number)
            grouped: dict[int, list[Initializer]] = {}
            for address in sorted(tier_map):
                initializer = decode_initializer(space, address, tuple(tier_map[address]))
                grouped.setdefault(initializer.action_list, []).append(initializer)

            for action_list, initializers in sorted(grouped.items()):
                count = space.byte(action_list)
                assert count == 4
                actions = tuple(
                    value
                    for index in range(count)
                    if (value := space.word(action_list + 1 + index * 2)) is not None
                )
                if len(actions) != 4:
                    raise ValueError(f"truncated action list ${action_list:04X}")
                definitions, tokens, token_counts, prompts = decode_action_graph(space, actions)
                key = (bank_number, action_list)
                if key not in FAMILY_NAMES:
                    raise ValueError(f"unclassified family ppq{bank_number}:${action_list:04X}")
                families.append(
                    Family(
                        bank_number,
                        FAMILY_NAMES[key],
                        action_list,
                        actions,
                        tuple(initializers),
                        definitions,
                        tokens,
                        token_counts,
                        prompts,
                    )
                )

    if len(families) != 45:
        raise ValueError(f"expected 45 action-list families, found {len(families)}")
    if sum(len(family.initializers) for family in families) != 130:
        raise ValueError("expected 130 bank-local rooted initializers")
    unique_definitions = {
        (family.bank, definition.address): definition
        for family in families
        for definition in family.definitions
    }
    if len(unique_definitions) != 401:
        raise ValueError(
            f"expected 401 reachable action definitions, found {len(unique_definitions)}"
        )
    cell_count = sum(len(definition.cells) for definition in unique_definitions.values())
    if cell_count != 10532:
        raise ValueError(f"expected 10532 reachable action cells, found {cell_count}")
    required = {
        0x8B4F,
        0x8B7B,
        0x8C12,
        0x8C37,
        0x8C50,
        0x8C61,
        0x2302,
        0x15F7,
    }
    for family in families:
        missing = required - family.tokens
        if missing:
            values = ", ".join(f"${value:04X}" for value in sorted(missing))
            raise ValueError(f"ppq{family.bank}:${family.action_list:04X} lacks {values}")
    return families


def family_symbol(family: Family) -> str:
    return f"PPQ{family.bank}_{family.name}_ACTION_LIST"


def format_tiers(family: Family) -> str:
    tiers = sorted({tier for initializer in family.initializers for tier in initializer.tiers})
    return ", ".join(str(tier) for tier in tiers)


def variant_summary(family: Family) -> str:
    random_limits: set[int] = set()
    offsets: set[int] = set()
    direct = 0
    for initializer in family.initializers:
        cells = initializer.cells
        saw_random = False
        for index, cell in enumerate(cells):
            if cell.token == 0x1B32:
                saw_random = True
                if index and cells[index - 1].token == 0x0112:
                    assert cells[index - 1].operand is not None
                    random_limits.add(cells[index - 1].operand)
            if cell.token == 0x015A and index and cells[index - 1].token == 0x0112:
                assert cells[index - 1].operand is not None
                offsets.add(cells[index - 1].operand)
        if not saw_random:
            direct += 1
    parts = []
    if random_limits:
        parts.append("random limits " + "/".join(str(value) for value in sorted(random_limits)))
    if offsets:
        parts.append("offsets " + "/".join(str(value) for value in sorted(offsets)))
    if direct:
        parts.append(f"{direct} direct/fixed")
    return "; ".join(parts) if parts else "fixed"


def render_report(families: list[Family]) -> str:
    lines = [
        "# Professor Pac-Man question-family inventory",
        "",
        "The 130 rooted PPQ initializers resolve to 45 executable question",
        "families. A family is identified by the counted action-list address returned",
        "to the fixed repeat filter; initializers that choose different random ranges",
        "or offsets but return the same list are variants of one family.",
        "",
        "Every family has a four-action list and reaches the same shared contract:",
        "scene setup, randomized correct-answer placement, distinct second-slot",
        "placement, remaining-slot placement, child-action synchronization,",
        "cooperative yield, and action completion.",
        "",
        "The fixed-ROM words behind that contract are decoded in",
        "[`question_presentation.md`](question_presentation.md).",
        "",
        "| Bank | Family | Action list | Initializers | Tiers | Variant setup | Prompts reached directly |",
        "| --- | --- | ---: | ---: | --- | --- | --- |",
    ]
    for family in families:
        prompts = "<br>".join(
            f"`${address:04X}` {text}" for address, text in family.prompts
        ) or "—"
        lines.append(
            f"| `ppq{family.bank}` | `{family.name}` | `${family.action_list:04X}` | "
            f"{len(family.initializers)} | {format_tiers(family)} | "
            f"{variant_summary(family)} | {prompts} |"
        )

    renderer_counts = {
        label: sum(token in family.tokens for family in families)
        for token, label in FEATURE_TOKENS.items()
    }
    renderer_calls = {
        label: sum(
            dict(family.token_counts).get(token, 0)
            for family in families
        )
        for token, label in FEATURE_TOKENS.items()
    }
    lines.extend(
        [
            "",
            "## Cross-family execution features",
            "",
            "| Feature | XT | Families | Calls |",
            "| --- | ---: | ---: | ---: |",
        ]
    )
    lines.extend(
        f"| {label} | `${token:04X}` | {renderer_counts[label]}/45 | "
        f"{renderer_calls[label]} |"
        for token, label in FEATURE_TOKENS.items()
    )
    lines.extend(
        [
            "",
            "## Promoted action-graph source",
            "",
            "The source promotion covers every outer action and every reachable",
            "bank-local colon definition. Counts are unique within each physical PPQ",
            "ROM; a definition reached by several families is counted once.",
            "",
            "| Bank | Families | Definitions | TERSE cells | Executable bytes |",
            "| --- | ---: | ---: | ---: | ---: |",
        ]
    )
    for bank in range(1, PPQ_COUNT + 1):
        bank_families = [family for family in families if family.bank == bank]
        definitions = {
            definition.address: definition
            for family in bank_families
            for definition in family.definitions
        }
        cells = sum(len(definition.cells) for definition in definitions.values())
        byte_count = sum(
            max(cell.end for cell in definition.cells) - definition.address
            for definition in definitions.values()
        )
        lines.append(
            f"| `ppq{bank}` | {len(bank_families)} | {len(definitions)} | "
            f"{cells} | {byte_count} |"
        )
    lines.extend(
        [
            "| **Total** | **45** | **401** | **10,532** | **27,353** |",
        ]
    )
    lines.extend(
        [
            "",
            "Prompt text is listed only when the action graph reaches its counted",
            "string through a direct literal. A dash does not mean that a family has no",
            "prompt; several families select text indirectly through variant tables.",
            "",
            "Run `python3 tools/analyze_question_families.py roms/profpac.zip` to",
            "validate the inventory and reproduce this report.",
        ]
    )
    return "\n".join(lines) + "\n"


def render_initializer(initializer: Initializer, symbol: str) -> str:
    lines = [f"QUESTION_INITIALIZER_{initializer.address:04X}:"]
    lines.append(f"        rst     $08{'':58s}; ${initializer.address:04X}")
    for cell in initializer.cells:
        name = TOKEN_NAMES.get(cell.token)
        if name is None:
            raise ValueError(
                f"initializer ${initializer.address:04X} uses unnamed token ${cell.token:04X}"
            )
        lines.append(f"        dw      {name:<63} ; ${cell.address:04X}")
        if cell.operand is not None:
            operand_address = cell.address + 2
            if cell.token == 0x0112:
                lines.append(f"        db      ${cell.operand:02X}{'':61s} ; ${operand_address:04X}")
            else:
                value = symbol if cell.operand == initializer.action_list else (
                    "QUESTION_VARIANT_ADDR"
                    if cell.operand == 0xF6E9
                    else f"${cell.operand:04X}"
                )
                lines.append(f"        dw      {value:<63} ; ${operand_address:04X}")
    return "\n".join(lines)


def source_equates(root: Path) -> tuple[dict[int, str], dict[int, str]]:
    token_names: dict[int, str] = {}
    operand_names: dict[int, str] = {}
    for relative in ("src/profpac_common.include", "src/profpac_question_common.include"):
        for line in (root / relative).read_text(encoding="utf-8").splitlines():
            match = re.match(
                r"^([A-Za-z_][A-Za-z0-9_]*)\s+equ\s+\$([0-9A-Fa-f]+)", line
            )
            if match is None:
                continue
            name, value_text = match.groups()
            value = int(value_text, 16)
            operand_names.setdefault(value, name)
            if name.startswith(("XT_", "CFG0_XT_")):
                token_names[value] = name
    return token_names, operand_names


def existing_definition_labels(lines: list[str]) -> dict[int, str]:
    labels: dict[int, str] = {}
    for index, line in enumerate(lines):
        match = re.match(r"^([A-Za-z_][A-Za-z0-9_]*):\s*$", line)
        if match is None or match.group(1).startswith("QUESTION_INITIALIZER_"):
            continue
        for candidate in lines[index + 1:index + 5]:
            address = re.search(r"; \$([0-9A-Fa-f]{4})", candidate)
            if address is None:
                continue
            if re.match(r"\s+rst\s+\$08\b", candidate, re.IGNORECASE):
                labels[int(address.group(1), 16)] = match.group(1)
            break
    return labels


ACTION_STAGE_NAMES = (
    "SETUP",
    "CORRECT",
    "WRONG_1",
    "WRONG_2",
)


def definition_names(
    bank: int, bank_families: list[Family], lines: list[str]
) -> dict[int, str]:
    names = existing_definition_labels(lines)
    for family in bank_families:
        for address, stage in zip(family.actions, ACTION_STAGE_NAMES):
            names.setdefault(address, f"{family.name}_{stage}")
    for definition in (
        definition
        for family in bank_families
        for definition in family.definitions
    ):
        names.setdefault(definition.address, f"PPQ{bank}_TERSE_{definition.address:04X}")
    return names


def source_line(directive: str, value: str, address: int, comment: str) -> str:
    return f"        {directive:<7} {value:<63} ; ${address:04X} {comment}".rstrip()


def render_definition(
    definition: Definition,
    name: str,
    token_names: dict[int, str],
    operand_names: dict[int, str],
    local_names: dict[int, str],
) -> str:
    labels = {
        cell.operand
        for cell in definition.cells
        if cell.token in BRANCH | CONDITIONAL_BRANCH and cell.operand is not None
    }
    labels.update(
        cell.operand
        for cell in definition.cells
        if cell.token in INLINE_CASES and cell.operand is not None
    )

    def symbol(value: int, branch: bool = False) -> str:
        if branch and value in labels:
            return f"L{value:04X}"
        return local_names.get(value, operand_names.get(value, f"${value:04X}"))

    lines = [f"{name}:", source_line("rst", "$08", definition.address, "colon entry")]
    for cell in definition.cells:
        if cell.address in labels:
            lines.append(f"L{cell.address:04X}:")
        token = local_names.get(
            cell.token, token_names.get(cell.token, f"${cell.token:04X}")
        )
        lines.append(source_line("dw", token, cell.address, "execution token"))
        operand_address = cell.address + 2
        if cell.token in INLINE_WORD:
            assert cell.operand is not None
            lines.append(
                source_line("dw", symbol(cell.operand), operand_address, "inline word")
            )
        elif cell.token in INLINE_BYTE:
            assert cell.operand is not None
            lines.append(
                source_line("db", f"${cell.operand:02X}", operand_address, "inline byte")
            )
        elif cell.token in BRANCH | CONDITIONAL_BRANCH:
            assert cell.operand is not None
            lines.append(
                source_line("dw", symbol(cell.operand, True), operand_address, "branch target")
            )
        elif cell.token in INLINE_STRING:
            values = ",".join(f"${value:02X}" for value in cell.payload)
            text = bytes(cell.payload[1:]).decode("ascii", errors="replace")
            lines.append(source_line("db", values, operand_address, f'counted string "{text}"'))
        elif cell.token in INLINE_CASES:
            assert cell.operand is not None
            lines.append(
                source_line("dw", symbol(cell.operand, True), operand_address, "case-table end")
            )
            table_address = operand_address + 2
            for target in cell.table:
                lines.append(
                    source_line("dw", symbol(target), table_address, "case target")
                )
                table_address += 2
    return "\n".join(lines)


def render_action_list(family: Family, local_names: dict[int, str]) -> str:
    lines = [
        f"{family.name}_ACTIONS:",
        source_line("db", "$04", family.action_list, "action count"),
    ]
    for index, address in enumerate(family.actions):
        lines.append(
            source_line(
                "dw",
                local_names[address],
                family.action_list + 1 + index * 2,
                ACTION_STAGE_NAMES[index].lower().replace("_", " "),
            )
        )
    return "\n".join(lines)


def emitted_range(line: str) -> tuple[int, int] | None:
    address = re.search(r"; \$([0-9A-Fa-f]{4})", line)
    width = directive_width(line)
    if address is None or width == 0:
        return None
    start = int(address.group(1), 16)
    return start, start + width


def raw_bytes(space: AddressSpace, start: int, end: int) -> list[str]:
    lines = []
    for address in range(start, end, 16):
        stop = min(address + 16, end)
        values = [space.byte(value) for value in range(address, stop)]
        if any(value is None for value in values):
            raise ValueError(f"raw source range ${start:04X}-${end - 1:04X} is unmapped")
        encoded = ",".join(f"${value:02X}" for value in values if value is not None)
        lines.append(source_line("db", encoded, address, "preserved bytes"))
    return lines


def replace_raw_range(
    lines: list[str], start: int, end: int, replacement: str, space: AddressSpace
) -> list[str]:
    entries = [
        (index, bounds)
        for index, line in enumerate(lines)
        if (bounds := emitted_range(line)) is not None
        and bounds[0] < end
        and bounds[1] > start
    ]
    if not entries:
        raise ValueError(f"source has no bytes for ${start:04X}-${end - 1:04X}")
    first_index, first_bounds = entries[0]
    last_index, last_bounds = entries[-1]
    for index, _ in entries:
        if not re.match(r"\s+db\s+", lines[index], re.IGNORECASE):
            raise ValueError(f"source range ${start:04X}-${end - 1:04X} is already structured")
    for line in lines[first_index:last_index + 1]:
        if re.match(r"^[A-Za-z_][A-Za-z0-9_]*:", line):
            raise ValueError(
                f"source label inside raw range ${start:04X}-${end - 1:04X}: {line}"
            )
    prefix = raw_bytes(space, first_bounds[0], start)
    suffix = raw_bytes(space, end, last_bounds[1])
    block = prefix + ([""] if prefix else []) + replacement.splitlines()
    if suffix:
        block += [""] + suffix
    return lines[:first_index] + block + lines[last_index + 1:]


def definition_is_promoted(lines: list[str], address: int) -> bool:
    return any(
        re.match(r"\s+rst\s+\$08\b", line, re.IGNORECASE)
        and re.search(fr"; \${address:04X}\b", line)
        for line in lines
    )


def action_list_is_promoted(lines: list[str], address: int) -> bool:
    required = {address + 1 + index * 2 for index in range(4)}
    found = {
        int(match.group(1), 16)
        for line in lines
        if re.match(r"\s+dw\s+", line, re.IGNORECASE)
        and (match := re.search(r"; \$([0-9A-Fa-f]{4})", line)) is not None
    }
    return required <= found


def directive_width(line: str) -> int:
    statement = line.split(";", 1)[0]
    if re.match(r"\s+rst\s+", statement, re.IGNORECASE):
        return 1
    if re.match(r"\s+dw\s+", statement, re.IGNORECASE):
        return 2
    if re.match(r"\s+db\s+", statement, re.IGNORECASE):
        return len(re.findall(r"\$[0-9A-Fa-f]{2}(?![0-9A-Fa-f])", statement))
    return 0


def rewrite_initializer_block(
    lines: list[str], initializer: Initializer, symbol: str, space: AddressSpace
) -> list[str]:
    label = f"QUESTION_INITIALIZER_{initializer.address:04X}:"
    try:
        start = lines.index(label)
    except ValueError as error:
        raise ValueError(f"missing source label {label}") from error

    required = initializer.cells[-1].end - initializer.address
    consumed = 0
    end = start + 1
    while end < len(lines) and consumed < required:
        width = directive_width(lines[end])
        if width == 0:
            raise ValueError(f"{label}: cannot measure source line {end + 1}")
        consumed += width
        end += 1
    if consumed < required:
        raise ValueError(f"{label}: source ends before initializer")

    replacement = render_initializer(initializer, symbol).splitlines()
    surplus = consumed - required
    if surplus:
        suffix_address = initializer.cells[-1].end
        suffix = [space.byte(suffix_address + index) for index in range(surplus)]
        if any(value is None for value in suffix):
            raise ValueError(f"{label}: suffix leaves question bank")
        values = ",".join(f"${value:02X}" for value in suffix if value is not None)
        replacement.append(f"        db      {values:<63} ; ${suffix_address:04X}")
    return lines[:start] + replacement + lines[end:]


def rewrite_sources(root: Path, archive_path: Path, families: list[Family]) -> None:
    by_bank: dict[int, list[Family]] = {}
    for family in families:
        by_bank.setdefault(family.bank, []).append(family)

    token_names, base_operand_names = source_equates(root)
    with zipfile.ZipFile(archive_path, "r") as archive:
        for bank, bank_families in sorted(by_bank.items()):
            path = root / "src" / f"ppq{bank}.asm"
            text = path.read_text(encoding="utf-8")
            lines = text.splitlines()
            space = AddressSpace(archive, bank)
            local_names = definition_names(bank, bank_families, lines)
            operand_names = dict(base_operand_names)
            operand_names.update(
                (family.action_list, family_symbol(family))
                for family in bank_families
            )

            definitions: dict[int, Definition] = {}
            for family in bank_families:
                for definition in family.definitions:
                    previous = definitions.setdefault(definition.address, definition)
                    if previous != definition:
                        raise ValueError(
                            f"conflicting ppq{bank} definition ${definition.address:04X}"
                        )

            graph_blocks: list[tuple[int, int, str, str]] = []
            for definition in definitions.values():
                end = max(cell.end for cell in definition.cells)
                rendered = render_definition(
                    definition,
                    local_names[definition.address],
                    token_names,
                    operand_names,
                    local_names,
                )
                graph_blocks.append((definition.address, end, "definition", rendered))
            for family in bank_families:
                graph_blocks.append(
                    (
                        family.action_list,
                        family.action_list + 9,
                        "action list",
                        render_action_list(family, local_names),
                    )
                )

            for start, end, kind, rendered in sorted(graph_blocks, reverse=True):
                if kind == "definition" and definition_is_promoted(lines, start):
                    continue
                if kind == "action list" and action_list_is_promoted(lines, start):
                    continue
                lines = replace_raw_range(lines, start, end, rendered, space)

            work = sorted(
                [
                    (
                    initializer,
                    family_symbol(family),
                    )
                    for family in bank_families
                    for initializer in family.initializers
                ],
                key=lambda item: item[0].address,
            )
            for initializer, symbol in reversed(work):
                lines = rewrite_initializer_block(lines, initializer, symbol, space)

            marker = "        org     QUESTION_ROM_WINDOW"
            marker_index = lines.index(marker)
            equates = [
                f"{family_symbol(family):<44} equ     ${family.action_list:04X}"
                for family in bank_families
            ]
            if not all(equate in lines for equate in equates):
                lines[marker_index + 1:marker_index + 1] = [""] + equates
            path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def check_sources(root: Path, families: list[Family]) -> None:
    by_bank: dict[int, list[Family]] = {}
    for family in families:
        by_bank.setdefault(family.bank, []).append(family)

    for bank, bank_families in sorted(by_bank.items()):
        text = (root / "src" / f"ppq{bank}.asm").read_text(encoding="utf-8")
        lines = text.splitlines()
        word_addresses = {
            int(match.group(1), 16)
            for line in lines
            if re.match(r"\s+dw\s+", line, re.IGNORECASE)
            and (match := re.search(r"; \$([0-9A-Fa-f]{4})", line)) is not None
        }
        checked_definitions: set[int] = set()
        for family in bank_families:
            for initializer in family.initializers:
                expected = render_initializer(initializer, family_symbol(family))
                if expected not in text:
                    raise ValueError(
                        f"src/ppq{bank}.asm:${initializer.address:04X} is not promoted"
                    )
            if not action_list_is_promoted(lines, family.action_list):
                raise ValueError(
                    f"src/ppq{bank}.asm:${family.action_list:04X} action list is not promoted"
                )
            for definition in family.definitions:
                if definition.address in checked_definitions:
                    continue
                checked_definitions.add(definition.address)
                if not definition_is_promoted(lines, definition.address):
                    raise ValueError(
                        f"src/ppq{bank}.asm:${definition.address:04X} definition is not promoted"
                    )
                missing = {
                    cell.address for cell in definition.cells
                    if cell.address not in word_addresses
                }
                if missing:
                    address = min(missing)
                    raise ValueError(
                        f"src/ppq{bank}.asm:${address:04X} token remains unstructured"
                    )


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path, help="path to profpac.zip")
    parser.add_argument(
        "--rewrite-sources",
        action="store_true",
        help="promote rooted initializers and all reachable family action graphs",
    )
    parser.add_argument(
        "--check-sources",
        action="store_true",
        help="require symbolic initializers and structured family action graphs",
    )
    parser.add_argument(
        "--quiet",
        action="store_true",
        help="validate without printing the Markdown report",
    )
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    families = decode_families(args.archive)
    if args.rewrite_sources:
        rewrite_sources(root, args.archive, families)
    if args.check_sources:
        check_sources(root, families)
    if not args.quiet:
        print(render_report(families), end="")


if __name__ == "__main__":
    main()
