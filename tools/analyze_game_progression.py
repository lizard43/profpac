#!/usr/bin/env python3
"""Validate the configuration-1 main-game progression graph."""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parent))
from analyze_question_families import (  # noqa: E402
    Definition,
    decode_definition,
    definition_is_promoted,
    existing_definition_labels,
)
from analyze_question_round import ProgramSpace  # noqa: E402


ROOTS = {
    0xBE66: "MAIN_APPLICATION",
    0xBCDB: "MAIN_PROGRESSION_TASK",
    0xD4DF: "START_GAME_CONTROL_TASK",
    0xD489: "ATTRACT_SOUND_TASK",
    0xD430: "COIN_CREDIT_CONTROL_TASK",
    0xB6C9: "ATTRACT_CHALLENGE_PROMPT_TASK",
    0xB4FC: "ATTRACT_DEMO_QUESTION_TASK",
    0xB8B4: "CREDIT_START_PROMPT_TASK",
    0xDB1B: "GAME_OVER_HIGH_SCORE_TASK",
    0xDA55: "INSERT_HIGH_SCORE_ENTRY",
    0xD66C: "DRAW_INITIALS_ENTRY_INSTRUCTIONS",
}

ACTION_LISTS = {
    0xB4F2: (0xAFF1,),
    0xB4F5: (0xB41C, 0xB499, 0xB4C5),
    0xB6C2: (0xB613, 0xB642, 0xB67F),
    0xB8B1: (0xB846,),
    0xD725: (0xD6CA, 0xD703),
    0xDECB: (0xBCDB,),
    0xDECE: (0xD4DF, 0xD489, 0xD430),
    0xDED5: (0xB6C9,),
    0xDED8: (0xB4FC,),
    0xDEDB: (0xDB1B,),
    0xDEDE: (0xB8B4,),
}

EXPECTED_DEFINITIONS = 60
EXPECTED_CELLS = 1960


def application_address(address: int) -> bool:
    return 0x4000 <= address < 0x8000 or 0xA000 <= address < 0xE000


def calls(definition: Definition, space: ProgramSpace) -> set[int]:
    targets = {cell.token for cell in definition.cells}
    targets.update(target for cell in definition.cells for target in cell.table)
    return {
        target for target in targets
        if application_address(target) and space.byte(target) == 0xCF
    }


def read_action_list(space: ProgramSpace, address: int) -> tuple[int, ...]:
    count = space.byte(address)
    if count is None:
        raise ValueError(f"unmapped action list ${address:04X}")
    values = tuple(space.word(address + 1 + 2 * index) for index in range(count))
    if any(value is None for value in values):
        raise ValueError(f"truncated action list ${address:04X}")
    return tuple(int(value) for value in values)


def decode_graph(archive: Path) -> dict[int, Definition]:
    with zipfile.ZipFile(archive, "r") as source:
        space = ProgramSpace(source, 1)
        for address, expected in ACTION_LISTS.items():
            actual = read_action_list(space, address)
            if actual != expected:
                raise ValueError(
                    f"${address:04X}: expected {expected}, found {actual}"
                )
        pending = list(ROOTS)
        pending.extend(target for values in ACTION_LISTS.values() for target in values)
        decoded: dict[int, Definition] = {}
        while pending:
            address = pending.pop()
            if address in decoded:
                continue
            if not application_address(address) or space.byte(address) != 0xCF:
                raise ValueError(f"invalid progression target ${address:04X}")
            definition = decode_definition(space, address)
            decoded[address] = definition
            pending.extend(calls(definition, space) - decoded.keys())

    cells = sum(len(definition.cells) for definition in decoded.values())
    if len(decoded) != EXPECTED_DEFINITIONS or cells != EXPECTED_CELLS:
        raise ValueError(
            f"expected {EXPECTED_DEFINITIONS} definitions/{EXPECTED_CELLS} cells; "
            f"found {len(decoded)}/{cells}"
        )
    return decoded


def source_for(address: int) -> str:
    return "pps8.asm" if 0xA000 <= address < 0xC000 else "pps9.asm"


def check_sources(root: Path, decoded: dict[int, Definition]) -> None:
    cache: dict[str, list[str]] = {}
    for address, definition in decoded.items():
        name = source_for(address)
        lines = cache.setdefault(
            name, (root / "src" / name).read_text(encoding="utf-8").splitlines()
        )
        if not definition_is_promoted(lines, definition.address):
            raise ValueError(f"src/{name}:${address:04X} is not structured")

    labels: dict[int, str] = {}
    for name, lines in cache.items():
        labels.update(existing_definition_labels(lines))
    for address, expected in ROOTS.items():
        if labels.get(address) != expected:
            raise ValueError(
                f"${address:04X}: expected label {expected}, found {labels.get(address)}"
            )

    pps8 = cache["pps8.asm"]
    for address in (0xB4F2, 0xB4F5, 0xB6C2, 0xB8B1):
        required = {address + 1 + 2 * index for index in range(len(ACTION_LISTS[address]))}
        found = {
            int(match.group(1), 16)
            for line in pps8
            if re.match(r"\s+dw\s+", line, re.IGNORECASE)
            and (match := re.search(r"; \$([0-9A-Fa-f]{4})", line))
        }
        if not required <= found:
            raise ValueError(f"src/pps8.asm:${address:04X} is not structured")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path)
    parser.add_argument("--check-sources", action="store_true")
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    decoded = decode_graph(args.archive)
    if args.check_sources:
        check_sources(root, decoded)
    if not args.quiet:
        pps8 = sum(0xA000 <= address < 0xC000 for address in decoded)
        pps9 = len(decoded) - pps8
        print("Main-game progression graph validated")
        print(f"Definitions: {len(decoded)}")
        print(f"TERSE cells: {sum(len(item.cells) for item in decoded.values())}")
        print(f"Action lists: {len(ACTION_LISTS)}")
        print(f"pps8: {pps8} definitions")
        print(f"pps9: {pps9} definitions")


if __name__ == "__main__":
    main()
