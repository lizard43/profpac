#!/usr/bin/env python3
"""Decode Signetics PLS153A raw fuse maps into Boolean equations."""

from __future__ import annotations

import argparse
import hashlib
import struct
import sys
import zipfile
from dataclasses import dataclass
from pathlib import Path


FUSE_COUNT = 1842
INPUT_PINS = (1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19)
OUTPUT_PINS = (9, 11, 12, 13, 14, 15, 16, 17, 18, 19)
PLD_MEMBERS = (
    "pls153a_cpu.u12",
    "pls153a_cpu.u16",
    "pls153a_epr.u6",
    "pls153a_epr.u7",
    "pls153a_gam.u5",
    "pls153a_gam.u10",
    "pls153a_gam.u11",
    "pls153a_scr.u19",
    "pls153a_scr.u39",
    "pls153a_scr.u55",
)
EXPECTED_SHA1 = {
    "pls153a_cpu.u12": "633d647bcae2f762847a2abe8069741ac33b15b8",
    "pls153a_cpu.u16": "8619c7626e58eac09a4d91f5ad49742240f5f71e",
    "pls153a_epr.u6": "5e074a2cbac99ebbf02bc4cd331679ede30eea3f",
    "pls153a_epr.u7": "ca8c3d8db24e99537c682aaf9726cbcef86728dd",
    "pls153a_gam.u5": "e49fb4ca7d9c8a769c145fd497b1244d6696831f",
    "pls153a_gam.u10": "577e6839190054f9b3aec6425e9d2a1810e11a08",
    "pls153a_gam.u11": "01a02aa67a42ff61e38e12683b02bf81c16519b8",
    "pls153a_scr.u19": "beae4fc5664d15a4b83a885d97d21efd14977380",
    "pls153a_scr.u39": "7aea6e17edbf87dc1d47ca8c640b50ebdb65dd29",
    "pls153a_scr.u55": "78ae2cc1d8b761b077e36343d4a91517298ce9e8",
}


class FuseMapError(ValueError):
    """Raised when a raw fuse map is malformed."""


@dataclass(frozen=True)
class ProductTerm:
    index: int
    literals: tuple[str, ...]
    disabled: bool

    def expression(self) -> str:
        if self.disabled:
            return "0"
        return " & ".join(self.literals) if self.literals else "1"


@dataclass(frozen=True)
class OutputEquation:
    pin: int
    active_low: bool
    terms: tuple[ProductTerm, ...]
    enable: ProductTerm


def unpack_raw(data: bytes) -> tuple[int, ...]:
    if len(data) < 4:
        raise FuseMapError("raw fuse map is shorter than its four-byte header")
    fuse_count = struct.unpack(">I", data[:4])[0]
    if fuse_count != FUSE_COUNT:
        raise FuseMapError(f"expected {FUSE_COUNT} fuses, found {fuse_count}")
    required = (fuse_count + 7) // 8
    if len(data) != 4 + required:
        raise FuseMapError(f"expected {4 + required} bytes, found {len(data)}")
    padding_mask = ~((1 << (fuse_count % 8)) - 1) & 0xFF
    if fuse_count % 8 and data[-1] & padding_mask:
        raise FuseMapError("nonzero padding bits follow the fuse map")
    return tuple((data[4 + index // 8] >> (index % 8)) & 1 for index in range(fuse_count))


def product_term(fuses: tuple[int, ...], row: int, index: int) -> ProductTerm:
    literals: list[str] = []
    for pin_index, pin in enumerate(INPUT_PINS):
        high_fuse = fuses[row + pin_index * 2]
        low_fuse = fuses[row + pin_index * 2 + 1]
        if high_fuse == 0 and low_fuse == 0:
            return ProductTerm(index, (), True)
        if high_fuse == 0 and low_fuse == 1:
            literals.append(pin_name(pin))
        elif high_fuse == 1 and low_fuse == 0:
            literals.append(f"/{pin_name(pin)}")
    return ProductTerm(index, tuple(literals), False)


def pin_name(pin: int) -> str:
    return f"B{0 if pin == 9 else pin - 10}" if pin in OUTPUT_PINS else f"I{pin - 1}"


def decode(fuses: tuple[int, ...]) -> tuple[OutputEquation, ...]:
    equations: list[OutputEquation] = []
    for output_index, pin in enumerate(OUTPUT_PINS):
        or_column = 9 if pin == 9 else 19 - pin
        terms: list[ProductTerm] = []
        for term_index in range(32):
            row = term_index * 46
            if fuses[row + 36 + or_column] == 0:
                term = product_term(fuses, row, term_index)
                if not term.disabled:
                    terms.append(term)
        oe_row = 1472 + output_index * 36
        enable = product_term(fuses, oe_row, 32 + output_index)
        active_low = bool(fuses[1832 + (9 - output_index)])
        equations.append(OutputEquation(pin, active_low, tuple(terms), enable))
    return tuple(equations)


def read_maps(path: Path) -> list[tuple[str, bytes]]:
    if path.is_dir():
        return [(name, (path / name).read_bytes()) for name in PLD_MEMBERS]
    with zipfile.ZipFile(path) as archive:
        names = set(archive.namelist())
        missing = [name for name in PLD_MEMBERS if name not in names]
        if missing:
            raise FuseMapError("archive is missing " + ", ".join(missing))
        return [(name, archive.read(name)) for name in PLD_MEMBERS]


def format_equation(equation: OutputEquation) -> str:
    lhs = f"/{pin_name(equation.pin)}" if equation.active_low else pin_name(equation.pin)
    terms = [term.expression() for term in equation.terms]
    if not terms:
        return f"{lhs} = 0"
    continuation = " " * (len(lhs) + 1) + "| "
    return f"{lhs} = {terms[0]}" + "".join(
        f"\n{continuation}{term}" for term in terms[1:]
    )


def report_plain(name: str, data: bytes) -> None:
    fuses = unpack_raw(data)
    equations = decode(fuses)
    print(f"[{name}]  SHA1 {hashlib.sha1(data).hexdigest()}")
    for equation in equations:
        if equation.enable.disabled:
            print(f"{pin_name(equation.pin)} = input only")
        else:
            print(format_equation(equation))
            print(f"{pin_name(equation.pin)}.oe = {equation.enable.expression()}")
    print()


def report_markdown(name: str, data: bytes) -> None:
    equations = decode(unpack_raw(data))
    print(f"### `{name}`\n")
    print("```text")
    for equation in equations:
        if equation.enable.disabled:
            print(f"{pin_name(equation.pin)} = input only")
        else:
            print(format_equation(equation))
            print(f"{pin_name(equation.pin)}.oe = {equation.enable.expression()}")
    print("```\n")


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Decode Professor Pac-Man PLS153A raw fuse maps"
    )
    parser.add_argument(
        "input", nargs="?", type=Path, default=Path("roms/orig/profpac.zip"),
        help="MAME ZIP or directory containing the ten PLS153A dumps",
    )
    parser.add_argument(
        "--check", action="store_true",
        help="validate all maps without printing their equations",
    )
    parser.add_argument(
        "--format", choices=("plain", "markdown"), default="plain",
        help="equation output format (default: plain)",
    )
    args = parser.parse_args()
    try:
        maps = read_maps(args.input)
        for name, data in maps:
            fuses = unpack_raw(data)
            decode(fuses)
            actual_sha1 = hashlib.sha1(data).hexdigest()
            if actual_sha1 != EXPECTED_SHA1[name]:
                raise FuseMapError(
                    f"{name}: SHA-1 {actual_sha1}, expected {EXPECTED_SHA1[name]}"
                )
            if not args.check:
                if args.format == "markdown":
                    report_markdown(name, data)
                else:
                    report_plain(name, data)
        if args.check:
            print(f"Verified {len(maps)} PLS153A fuse maps ({FUSE_COUNT} fuses each)")
        return 0
    except (FuseMapError, FileNotFoundError, zipfile.BadZipFile, KeyError) as error:
        print(f"PLS153A decode failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
