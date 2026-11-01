#!/usr/bin/env python3
"""Decode and validate Professor Pac-Man PPQ bank directories.

Reconstructed from docs/question_roms.md and the consuming interface in
analyze_question_families.py. No archived implementation was available.
This is a strict ROM decoder, not a stub: it checks the layout, addresses,
colon entry opcode, and the independently documented inventory.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
import sys
import zipfile

BANK_BASE = 0x4000
BANK_SIZE = 0x4000
PPQ_COUNT = 14
ROOT_SLOTS = 8

# Root, bucket counts, total references, unique initializers.
# Independently documented in docs/question_roms.md.
EXPECTED = {
    1: (0x7B60, (1, 2, 3, 2, 2, 2, 2, 1), 15, 8),
    2: (0x7CF7, (3, 3, 2, 4, 2, 3, 3, 3), 23, 16),
    3: (0x79A2, (1, 2, 2, 1, 2, 1, 1, 1), 11, 8),
    4: (0x7487, (2, 2, 2, 2, 2, 2, 1, 1), 14, 10),
    5: (0x7EB0, (2, 2, 3, 3, 3, 2, 2, 2), 19, 14),
    6: (0x7B76, (1, 3, 2, 3, 2, 2, 2, 2), 17, 17),
    7: (0x7DEF, (1, 2, 1, 3, 1, 2, 2, 1), 13, 9),
    8: (0x7E37, (1, 1, 2, 1, 1, 1, 1, 1), 9, 8),
    9: (0x7DF5, (5, 4, 2, 1, 1, 4, 4, 1), 22, 5),
    10: (0x781C, (1, 1, 2, 1, 2, 1, 2, 1), 11, 4),
    11: (0x770A, (1, 1, 1, 1, 1, 2, 2, 2), 11, 9),
    12: (0x7A2C, (1, 1, 1, 1, 1, 1, 1, 1), 8, 2),
    13: (0x7E95, (3, 4, 3, 1, 1, 1, 1, 1), 15, 13),
    14: (0x7211, (2, 2, 2, 2, 1, 1, 1, 2), 13, 7),
}


@dataclass(frozen=True)
class Bucket:
    address: int
    initializers: tuple[int, ...]

    @property
    def count(self) -> int:
        return len(self.initializers)


@dataclass(frozen=True)
class Bank:
    name: str
    root: int
    buckets: tuple[Bucket, ...]

    @property
    def references(self) -> int:
        return sum(bucket.count for bucket in self.buckets)

    @property
    def unique_initializers(self) -> tuple[int, ...]:
        return tuple(sorted({entry for b in self.buckets for entry in b.initializers}))


def decode_bank(name: str, image: bytes) -> Bank:
    """Decode a 16-KiB bank mapped into CPU $4000-$7FFF.

    Raises ValueError on invalid structures or mismatches to the published
    original-ROM inventory. The caller need not open a ZIP itself.
    """
    if not name.startswith("ppq") or not name[3:].isdigit():
        raise ValueError(f"invalid PPQ member name: {name!r}")
    number = int(name[3:])
    if number not in EXPECTED:
        raise ValueError(f"{name}: bank number outside 1..{PPQ_COUNT}")
    if len(image) != BANK_SIZE:
        raise ValueError(f"{name}: size {len(image)}, expected {BANK_SIZE}")

    def check_span(address: int, size: int, label: str) -> int:
        if size < 0 or not BANK_BASE <= address or address + size > BANK_BASE + BANK_SIZE:
            raise ValueError(f"{name}: {label} at ${address:04X} leaves PPQ window")
        return address - BANK_BASE

    def word(address: int, label: str) -> int:
        offset = check_span(address, 2, label)
        return image[offset] | (image[offset + 1] << 8)

    root = word(BANK_BASE, "bank header")
    check_span(root, ROOT_SLOTS * 2, "root directory")
    buckets = []
    for tier in range(ROOT_SLOTS):
        address = word(root + tier * 2, f"tier {tier} directory pointer")
        count_offset = check_span(address, 1, f"tier {tier} bucket")
        count = image[count_offset]
        if count == 0:
            raise ValueError(f"{name}: empty tier {tier} bucket at ${address:04X}")
        check_span(address + 1, 2 * count, f"tier {tier} initializer array")
        entries = []
        for index in range(count):
            entry = word(address + 1 + 2 * index, f"tier {tier} entry {index}")
            pos = check_span(entry, 1, f"tier {tier} initializer {index}")
            if image[pos] != 0xCF:
                raise ValueError(
                    f"{name}: initializer ${entry:04X} begins with "
                    f"${image[pos]:02X}, expected RST $08 ($CF)"
                )
            entries.append(entry)
        buckets.append(Bucket(address, tuple(entries)))

    result = Bank(name, root, tuple(buckets))
    expected_root, expected_counts, expected_refs, expected_unique = EXPECTED[number]
    actual_counts = tuple(bucket.count for bucket in buckets)
    if (root, actual_counts, result.references, len(result.unique_initializers)) != (
        expected_root, expected_counts, expected_refs, expected_unique
    ):
        raise ValueError(
            f"{name}: directory differs from documented baseline: "
            f"root ${root:04X}, counts {actual_counts}, "
            f"references {result.references}, unique {len(result.unique_initializers)}"
        )
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path, help="MAME profpac.zip containing ppq1..ppq14")
    parser.add_argument("--details", action="store_true", help="print tier pointers and initializer entries")
    args = parser.parse_args()

    try:
        with zipfile.ZipFile(args.archive) as archive:
            banks = [decode_bank(f"ppq{i}", archive.read(f"ppq{i}"))
                     for i in range(1, PPQ_COUNT + 1)]
    except (OSError, ValueError, zipfile.BadZipFile, KeyError) as exc:
        print(f"PPQ bank decode failed: {exc}", file=sys.stderr)
        return 1

    print("Bank   Root   Tier bucket counts       Refs  Unique")
    for bank in banks:
        counts = "/".join(str(bucket.count) for bucket in bank.buckets)
        print(f"{bank.name:<6} ${bank.root:04X}  {counts:<24} "
              f"{bank.references:>4} {len(bank.unique_initializers):>7}")
        if args.details:
            for tier, bucket in enumerate(bank.buckets):
                refs = " ".join(f"${address:04X}" for address in bucket.initializers)
                print(f"       tier {tier}: ${bucket.address:04X} [{bucket.count}] {refs}")

    references = sum(bank.references for bank in banks)
    unique = sum(len(bank.unique_initializers) for bank in banks)
    if references != 201 or unique != 130:
        print(f"unexpected aggregate inventory: {references} references, {unique} unique",
              file=sys.stderr)
        return 1
    print(f"Validated {len(banks)} PPQ banks, {references} references, "
          f"{unique} bank-local unique initializers")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
