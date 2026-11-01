#!/usr/bin/env python3
"""Decode, promote, and validate the Professor Pac-Man question-round graph."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
import re
import sys
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parent))
from analyze_question_families import (  # noqa: E402
    AddressSpace,
    Definition,
    decode_definition,
    definition_is_promoted,
    emitted_range,
    existing_definition_labels,
    raw_bytes,
    render_definition,
    source_equates,
)


@dataclass(frozen=True)
class ActionList:
    address: int
    actions: tuple[int, ...]
    name: str
    configuration: int


ACTION_LISTS = (
    ActionList(0xD401, (0xD36F, 0xC487, 0x909F), "BONUS_QUESTION_OPEN_ACTIONS", 0),
    ActionList(0xD408, (0xC487,), "STANDARD_QUESTION_OPEN_ACTIONS", 0),
    ActionList(0xD40B, (0xCB1A, 0xC487), "BANKED_QUESTION_OPEN_ACTIONS", 0),
    ActionList(0xD410, (0xC05C,), "ROUND_STATUS_ACTIONS", 0),
    ActionList(0xD413, (0xC8B2, 0xC9D6, 0xC693), "RESPONSE_INPUT_ACTIONS", 0),
    ActionList(0xD41A, (0x93E6, 0x91AF), "ANSWER_SELECTION_ACTIONS", 0),
    ActionList(0xD41F, (0xCD01,), "ANSWER_CURSOR_ACTIONS", 0),
    ActionList(0xC42D, (0xC2B0,), "RESPONSE_FEEDBACK_ACTIONS", 0),
    ActionList(0xBEAB, (0xBE47,), "ROUND_INTRO_ANIMATION_ACTIONS", 0),
    ActionList(0xBFC2, (0xBF5C, 0xBF94, 0xBEDE), "ROUND_MESSAGE_ANIMATION_ACTIONS", 0),
    ActionList(0xD725, (0xD6CA, 0xD703), "ROUND_RESULT_ANIMATION_ACTIONS", 0),
    ActionList(0xDECB, (0xBCDB,), "MAIN_PROGRESSION_ACTIONS", 1),
    ActionList(0xDECE, (0xD4DF, 0xD489, 0xD430), "MAIN_CONTROL_ACTIONS", 1),
    ActionList(0xDED5, (0xB6C9,), "ATTRACT_CHALLENGE_PROMPT_ACTIONS", 1),
    ActionList(0xDED8, (0xB4FC,), "ATTRACT_DEMO_QUESTION_ACTIONS", 1),
    ActionList(0xDEDB, (0xDB1B,), "GAME_OVER_ACTIONS", 1),
    ActionList(0xDEDE, (0xB8B4,), "CREDIT_START_PROMPT_ACTIONS", 1),
)

ROOT_NAMES = {
    0xD0F9: "QUESTION_ROUND_CONTROLLER",
    0xD36F: "QUESTION_SCENE_OPEN_TASK",
    0xC487: "QUESTION_ROUND_OPEN_TASK",
    0x909F: "PLAYER_PROMPT_TASK",
    0xCB1A: "QUESTION_BANK_WINDOW_TASK",
    0xC05C: "ROUND_STATUS_DISPLAY_TASK",
    0xC8B2: "RESPONSE_CONTROL_TASK",
    0xC9D6: "RESPONSE_DISPLAY_TASK",
    0xC693: "RESPONSE_TIMER_TASK",
    0x93E6: "ANSWER_SELECTION_TASK",
    0x91AF: "ANSWER_INPUT_GATE_TASK",
    0xCD01: "ANSWER_CURSOR_TASK",
    0xC2B0: "RESPONSE_FEEDBACK_TASK",
    0xDB1B: "GAME_OVER_HIGH_SCORE_TASK",
    0xBCDB: "MAIN_PROGRESSION_TASK",
    0xD430: "COIN_CREDIT_CONTROL_TASK",
    0xD489: "ATTRACT_SOUND_TASK",
    0xD4DF: "START_GAME_CONTROL_TASK",
    0xB4FC: "ATTRACT_DEMO_QUESTION_TASK",
    0xB6C9: "ATTRACT_CHALLENGE_PROMPT_TASK",
    0xB8B4: "CREDIT_START_PROMPT_TASK",
}

CROSS_ROM_NAMES = {
    0x909F: "CFG0_XT_PLAYER_PROMPT_TASK",
    0x91AF: "CFG0_XT_ANSWER_INPUT_GATE_TASK",
    0x93E6: "CFG0_XT_ANSWER_SELECTION_TASK",
    0xBEAB: "CFG0_ROUND_INTRO_ANIMATION_ACTIONS_ADDR",
    0xBFC2: "CFG0_ROUND_MESSAGE_ACTIONS_ADDR",
    0xBCDB: "CFG1_XT_MAIN_PROGRESSION_TASK",
}

ROM_RANGES = {
    "pps3": (0x8000, 0xA000),
    "pps4": (0xA000, 0xC000),
    "pps8": (0xA000, 0xC000),
    "pps9": (0xC000, 0xE000),
}


class ProgramSpace(AddressSpace):
    def __init__(self, archive: zipfile.ZipFile, configuration: int):
        self.question = b""
        self.fixed: dict[int, int] = {}
        mappings = (
            (("pps1", 0x0000), ("pps2", 0x2000), ("pps3", 0x8000),
             ("pps4", 0xA000), ("pps9", 0xC000))
            if configuration == 0 else
            (("pps1", 0x0000), ("pps2", 0x2000), ("pps5", 0x4000),
             ("pps6", 0x6000), ("pps7", 0x8000), ("pps8", 0xA000),
             ("pps9", 0xC000))
        )
        for name, base in mappings:
            self.fixed.update(
                (base + offset, value)
                for offset, value in enumerate(archive.read(name))
            )

    def byte(self, address: int) -> int | None:
        return self.fixed.get(address)


def local_calls(definition: Definition, space: ProgramSpace, bounds: tuple[int, int]) -> set[int]:
    start, end = bounds
    targets = {cell.token for cell in definition.cells}
    targets.update(target for cell in definition.cells for target in cell.table)
    return {
        target for target in targets
        if start <= target < end and space.byte(target) == 0xCF
    }


def decode_closure(
    space: ProgramSpace, roots: set[int], bounds: tuple[int, int]
) -> dict[int, Definition]:
    pending = list(roots)
    decoded: dict[int, Definition] = {}
    while pending:
        entry = pending.pop()
        if entry in decoded:
            continue
        definition = decode_definition(space, entry)
        decoded[entry] = definition
        pending.extend(local_calls(definition, space, bounds) - decoded.keys())
    return decoded


def read_action_list(space: ProgramSpace, address: int) -> tuple[int, ...]:
    count = space.byte(address)
    if count is None:
        raise ValueError(f"unmapped action list ${address:04X}")
    result = []
    for index in range(count):
        value = space.word(address + 1 + 2 * index)
        if value is None:
            raise ValueError(f"truncated action list ${address:04X}")
        result.append(value)
    return tuple(result)


def roots_by_rom() -> dict[str, set[int]]:
    result = {name: set() for name in ROM_RANGES}
    for item in ACTION_LISTS:
        for action in item.actions:
            if 0x8000 <= action < 0xA000:
                result["pps3"].add(action)
            elif 0xA000 <= action < 0xC000:
                result["pps8" if item.configuration else "pps4"].add(action)
            elif 0xC000 <= action < 0xE000:
                result["pps9"].add(action)
    result["pps9"].add(0xD0F9)
    return result


def graph_rom(address: int, configuration: int) -> str | None:
    if 0xC000 <= address < 0xE000:
        return "pps9"
    if configuration == 0 and 0x8000 <= address < 0xA000:
        return "pps3"
    if configuration == 0 and 0xA000 <= address < 0xC000:
        return "pps4"
    if configuration == 1 and 0xA000 <= address < 0xC000:
        return "pps8"
    return None


def decode_context_graph(
    space: ProgramSpace, configuration: int, roots: set[int]
) -> dict[str, dict[int, Definition]]:
    decoded = {name: {} for name in ROM_RANGES}
    pending = list(roots)
    while pending:
        entry = pending.pop()
        rom = graph_rom(entry, configuration)
        if rom is None or entry in decoded[rom] or space.byte(entry) != 0xCF:
            continue
        definition = decode_definition(space, entry)
        decoded[rom][entry] = definition
        targets = {cell.token for cell in definition.cells}
        targets.update(target for cell in definition.cells for target in cell.table)
        pending.extend(
            target for target in targets
            if graph_rom(target, configuration) is not None
            and space.byte(target) == 0xCF
        )
    return decoded


def decode_round(archive_path: Path) -> tuple[dict[str, dict[int, Definition]], dict[int, ProgramSpace]]:
    with zipfile.ZipFile(archive_path, "r") as archive:
        spaces = {0: ProgramSpace(archive, 0), 1: ProgramSpace(archive, 1)}
        for item in ACTION_LISTS:
            actual = read_action_list(spaces[item.configuration], item.address)
            if actual != item.actions:
                raise ValueError(
                    f"${item.address:04X}: expected {item.actions}, found {actual}"
                )
        config0_roots = {0xD0F9}
        config1_roots: set[int] = set()
        for item in ACTION_LISTS:
            (config1_roots if item.configuration else config0_roots).update(item.actions)
        graph0 = decode_context_graph(spaces[0], 0, config0_roots)
        graph1 = decode_context_graph(spaces[1], 1, config1_roots)
        decoded = {name: dict(graph0[name]) for name in ROM_RANGES}
        for rom, definitions in graph1.items():
            for address, definition in definitions.items():
                previous = decoded[rom].setdefault(address, definition)
                if previous != definition:
                    raise ValueError(f"bank-context conflict at {rom}:${address:04X}")
    return decoded, spaces


def source_line(directive: str, value: str, address: int, comment: str) -> str:
    return f"        {directive:<7} {value:<63} ; ${address:04X} {comment}".rstrip()


def render_action_list(item: ActionList, names: dict[int, str]) -> str:
    lines = [
        f"{item.name}:",
        source_line("db", f"${len(item.actions):02X}", item.address, "action count"),
    ]
    for index, action in enumerate(item.actions):
        lines.append(
            source_line("dw", names.get(action, f"${action:04X}"),
                        item.address + 1 + 2 * index, "action task")
        )
    return "\n".join(lines)


def block_is_structured(lines: list[str], start: int, end: int) -> bool:
    addresses = {
        int(match.group(1), 16)
        for line in lines
        if not re.match(r"\s+db\s+", line, re.IGNORECASE)
        and (match := re.search(r"; \$([0-9A-Fa-f]{4})", line)) is not None
    }
    return all(address in addresses for address in range(start, end, 2))


def action_list_is_structured(lines: list[str], item: ActionList) -> bool:
    if f"{item.name}:" not in lines:
        return False
    required = {item.address + 1 + 2 * index for index in range(len(item.actions))}
    found = {
        int(match.group(1), 16)
        for line in lines
        if re.match(r"\s+dw\s+", line, re.IGNORECASE)
        and (match := re.search(r"; \$([0-9A-Fa-f]{4})", line)) is not None
    }
    return required <= found


def replace_range(
    lines: list[str], start: int, end: int, replacement: str, space: ProgramSpace
) -> list[str]:
    entries = [
        (index, bounds)
        for index, line in enumerate(lines)
        if (bounds := emitted_range(line)) is not None
        and bounds[0] < end and bounds[1] > start
    ]
    if not entries:
        raise ValueError(f"source has no bytes for ${start:04X}-${end - 1:04X}")
    first_index, first_bounds = entries[0]
    last_index, last_bounds = entries[-1]
    for index, _ in entries:
        if start != 0xD0F9 and not re.match(r"\s+db\s+", lines[index], re.IGNORECASE):
            raise ValueError(f"${start:04X}-${end - 1:04X} overlaps structured source")
    prefix = raw_bytes(space, first_bounds[0], start)
    suffix = raw_bytes(space, end, last_bounds[1])
    replacement_label = replacement.splitlines()[0]
    if first_index and lines[first_index - 1] == replacement_label:
        first_index -= 1
    block = prefix + ([""] if prefix else []) + replacement.splitlines()
    if suffix:
        block += [""] + suffix
    return lines[:first_index] + block + lines[last_index + 1:]


def rewrite_sources(root: Path, decoded: dict[str, dict[int, Definition]], spaces: dict[int, ProgramSpace]) -> None:
    token_names, operand_names = source_equates(root)
    for rom, definitions in decoded.items():
        path = root / "src" / f"{rom}.asm"
        lines = path.read_text(encoding="utf-8").splitlines()
        names = existing_definition_labels(lines)
        names.update(
            (address, name) for address, name in ROOT_NAMES.items()
            if ROM_RANGES[rom][0] <= address < ROM_RANGES[rom][1]
        )
        names.update(
            (item.address, item.name) for item in ACTION_LISTS
            if ROM_RANGES[rom][0] <= item.address < ROM_RANGES[rom][1]
            and (rom == "pps8") == bool(item.configuration)
        )
        local_operands = dict(operand_names)
        local_operands.update(CROSS_ROM_NAMES)
        for address in definitions:
            names.setdefault(address, f"ROUND_TERSE_{address:04X}")
        configuration = 1 if rom == "pps8" else 0
        blocks: list[tuple[int, int, str]] = []
        for definition in definitions.values():
            end = max(cell.end for cell in definition.cells)
            if definition_is_promoted(lines, definition.address):
                continue
            blocks.append(
                (definition.address, end,
                 render_definition(definition, names[definition.address], token_names,
                                   local_operands, names))
            )
        for item in ACTION_LISTS:
            owner = (
                "pps3" if 0x8000 <= item.address < 0xA000 else
                ("pps8" if item.configuration else "pps4")
                if 0xA000 <= item.address < 0xC000 else "pps9"
            )
            if owner != rom:
                continue
            end = item.address + 1 + 2 * len(item.actions)
            if action_list_is_structured(lines, item):
                continue
            action_names = dict(CROSS_ROM_NAMES)
            action_names.update(names)
            blocks.append((item.address, end, render_action_list(item, action_names)))
        for start, end, rendered in sorted(blocks, reverse=True):
            lines = replace_range(lines, start, end, rendered, spaces[configuration])
        path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def check_sources(root: Path, decoded: dict[str, dict[int, Definition]]) -> None:
    for rom, definitions in decoded.items():
        lines = (root / "src" / f"{rom}.asm").read_text(encoding="utf-8").splitlines()
        for definition in definitions.values():
            end = max(cell.end for cell in definition.cells)
            if not definition_is_promoted(lines, definition.address):
                raise ValueError(f"src/{rom}.asm:${definition.address:04X} is not structured")
    for item in ACTION_LISTS:
        rom = (
            "pps3" if 0x8000 <= item.address < 0xA000 else
            ("pps8" if item.configuration else "pps4")
            if 0xA000 <= item.address < 0xC000 else "pps9"
        )
        lines = (root / "src" / f"{rom}.asm").read_text(encoding="utf-8").splitlines()
        if not action_list_is_structured(lines, item):
            raise ValueError(f"src/{rom}.asm:${item.address:04X} action list is not structured")


def report(decoded: dict[str, dict[int, Definition]]) -> str:
    total_definitions = sum(len(items) for items in decoded.values())
    total_cells = sum(len(item.cells) for items in decoded.values() for item in items.values())
    lines = [
        "Question-round graph validated",
        f"Definitions: {total_definitions}",
        f"TERSE cells: {total_cells}",
        f"Action lists: {len(ACTION_LISTS)}",
    ]
    for rom, definitions in decoded.items():
        cells = sum(len(item.cells) for item in definitions.values())
        lines.append(f"{rom}: {len(definitions)} definitions, {cells} cells")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path)
    parser.add_argument("--rewrite-sources", action="store_true")
    parser.add_argument("--check-sources", action="store_true")
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    decoded, spaces = decode_round(args.archive)
    if args.rewrite_sources:
        rewrite_sources(root, decoded, spaces)
    if args.check_sources:
        check_sources(root, decoded)
    if not args.quiet:
        print(report(decoded))


if __name__ == "__main__":
    main()
