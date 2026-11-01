#!/usr/bin/env python3
"""Discover, validate, report, and annotate Professor Pac-Man PPQ images."""

from __future__ import annotations

import argparse
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
import re
import sys
import zipfile

from analyze_question_families import (
    AddressSpace,
    FAMILY_SYMBOL_PREFIXES,
    decode_families,
)


DRAW_OBJECT = 0x2CF2
LIT = 0x0109
ARRAY = 0x0125

# PPQ6's hand-placement family selects images through two large permutation
# tables rather than leaving an ARRAY immediately adjacent to DRAW_OBJECT.
# One referenced image begins a contiguous, pointer-addressed image atlas.
INDIRECT_IMAGE_SEEDS = {6: (0x6378, 0x7369, 0x737E)}

DB_LINE = re.compile(
    r"^(?P<indent>\s*)db\s+(?P<values>\$[0-9A-Fa-f]{2}"
    r"(?:\s*,\s*\$[0-9A-Fa-f]{2})*)\s*;\s*\$(?P<address>[0-9A-Fa-f]{4}).*$",
    re.IGNORECASE,
)
LABEL_LINE = re.compile(r"^([A-Za-z_][A-Za-z0-9_]*):\s*$")
GENERATED_IMAGE_LABEL = re.compile(r"^[A-Za-z0-9_]+_IMG_[0-9]{2}$")


@dataclass(frozen=True)
class Image:
    bank: int
    address: int
    x_reference: int
    y_reference: int
    width_bytes: int
    height: int
    data: bytes
    owners: tuple[str, ...]
    direct: bool
    symbol: str

    @property
    def end(self) -> int:
        return self.address + 4 + len(self.data)

    @property
    def width_pixels(self) -> int:
        return self.width_bytes * 4


def valid_image(space: AddressSpace, address: int | None) -> bool:
    if address is None or not 0x4000 <= address < 0x7FFC:
        return False
    header = [space.byte(address + offset) for offset in range(4)]
    if any(value is None for value in header):
        return False
    width, height = header[2], header[3]
    assert width is not None and height is not None
    return 0 < width <= 20 and 0 < height <= 100 and address + 4 + width * height <= 0x8000


def image_end(space: AddressSpace, address: int) -> int:
    width = space.byte(address + 2)
    height = space.byte(address + 3)
    assert width is not None and height is not None
    return address + 4 + width * height


def existing_labels(source: Path) -> dict[int, str]:
    labels: dict[int, str] = {}
    pending: list[str] = []
    for line in source.read_text(encoding="utf-8").splitlines():
        match = LABEL_LINE.match(line)
        if match:
            pending.append(match.group(1))
            continue
        data = DB_LINE.match(line)
        if data and pending:
            if not GENERATED_IMAGE_LABEL.match(pending[-1]):
                labels[int(data.group("address"), 16)] = pending[-1]
            pending = []
        elif line.strip() and not line.lstrip().startswith(";"):
            pending = []
    return labels


def discover_images(archive_path: Path, source_root: Path) -> list[Image]:
    families = decode_families(archive_path)
    owners: dict[tuple[int, int], set[str]] = defaultdict(set)
    direct: set[tuple[int, int]] = set()

    with zipfile.ZipFile(archive_path, "r") as archive:
        for family in families:
            space = AddressSpace(archive, family.bank)
            for definition in family.definitions:
                for index, cell in enumerate(definition.cells):
                    if cell.token != DRAW_OBJECT:
                        continue
                    prior = definition.cells[index - 1] if index else None
                    if prior and prior.token == LIT and valid_image(space, prior.operand):
                        assert prior.operand is not None
                        key = family.bank, prior.operand
                        owners[key].add(family.name)
                        direct.add(key)

                    # Indirect draws use "variant ARRAY table @ DRAW_OBJECT".
                    # Consecutive valid pointers are members of the image table;
                    # the 64-entry ceiling exceeds every shipped PPQ table.
                    arrays = [
                        candidate.operand
                        for candidate in definition.cells[max(0, index - 8):index]
                        if candidate.token == ARRAY
                    ]
                    if not arrays:
                        continue
                    table = arrays[-1]
                    assert table is not None
                    for ordinal in range(64):
                        target = space.word(table + ordinal * 2)
                        if not valid_image(space, target):
                            break
                        assert target is not None
                        owners[family.bank, target].add(family.name)

        for bank, addresses in INDIRECT_IMAGE_SEEDS.items():
            space = AddressSpace(archive, bank)
            for address in addresses:
                if not valid_image(space, address):
                    raise ValueError(f"ppq{bank}:${address:04X} is not a valid image seed")
                owners[bank, address].add(
                    "HAND_PLACEMENT_MEMORY" if address < 0x7000 else "FIGURE_SERIES_MEMORY"
                )

            # Follow the pointer-addressed, contiguous PPQ6 atlas. Requiring the
            # next record address to occur as a word prevents arbitrary data
            # after an image from being accepted merely because four bytes look
            # like a plausible header.
            image = archive.read(f"ppq{bank}")
            referenced = {
                image[offset] | image[offset + 1] << 8
                for offset in range(len(image) - 1)
            }
            cursor = 0x6378
            while valid_image(space, cursor) and cursor in referenced:
                owners[bank, cursor].add("HAND_PLACEMENT_MEMORY")
                cursor = image_end(space, cursor)

        result: list[Image] = []
        labels = {
            bank: existing_labels(source_root / f"src/ppq{bank}.asm")
            for bank in range(1, 15)
        }
        grouped: dict[tuple[int, str], list[int]] = defaultdict(list)
        for (bank, address), names in owners.items():
            ordered_names = tuple(sorted(names))
            prefix = (
                FAMILY_SYMBOL_PREFIXES[ordered_names[0]]
                if len(ordered_names) == 1 else f"PPQ{bank}_SHARED"
            )
            grouped[bank, prefix].append(address)

        generated: dict[tuple[int, int], str] = {}
        for (bank, prefix), addresses in grouped.items():
            for ordinal, address in enumerate(sorted(addresses), 1):
                generated[bank, address] = f"{prefix}_IMG_{ordinal:02d}"

        for (bank, address), names in sorted(owners.items()):
            space = AddressSpace(archive, bank)
            header = tuple(space.byte(address + offset) for offset in range(4))
            assert all(value is not None for value in header)
            xref, yref, width, height = (int(value) for value in header)
            payload = bytes(
                int(space.byte(address + 4 + offset))
                for offset in range(width * height)
            )
            result.append(
                Image(
                    bank,
                    address,
                    xref,
                    yref,
                    width,
                    height,
                    payload,
                    tuple(sorted(names)),
                    (bank, address) in direct,
                    labels[bank].get(address, generated[bank, address]),
                )
            )

    for bank in range(1, 15):
        bank_images = [image for image in result if image.bank == bank]
        for left, right in zip(bank_images, bank_images[1:]):
            if right.address < left.end:
                raise ValueError(
                    f"overlapping ppq{bank} images ${left.address:04X} and ${right.address:04X}"
                )
    return result


def pixels(row: bytes) -> str:
    values = []
    for value in row:
        values.extend(".123"[(value >> shift) & 3] for shift in (6, 4, 2, 0))
    return "".join(values)


def db_line(values: bytes, address: int, comment: str = "") -> str:
    encoded = ",".join(f"${value:02X}" for value in values)
    suffix = f" {comment}" if comment else ""
    return f"        db      {encoded:<63} ; ${address:04X}{suffix}".rstrip()


def check_sources(root: Path, images: list[Image]) -> None:
    by_bank: dict[int, list[Image]] = defaultdict(list)
    for image in images:
        by_bank[image.bank].append(image)
    for bank, bank_images in by_bank.items():
        text = (root / f"src/ppq{bank}.asm").read_text(encoding="utf-8")
        for image in bank_images:
            if f"{image.symbol}:" not in text:
                raise ValueError(
                    f"ppq{bank}:${image.address:04X} lacks image label {image.symbol}"
                )
            header = db_line(
                bytes((image.x_reference, image.y_reference,
                       image.width_bytes, image.height)),
                image.address,
                "X reference, Y reference, source-byte width, height",
            )
            if header not in text:
                raise ValueError(f"ppq{bank}:${image.address:04X} lacks decoded header")
            for row_number in range(image.height):
                start = row_number * image.width_bytes
                row = image.data[start:start + image.width_bytes]
                expected = db_line(
                    row,
                    image.address + 4 + start,
                    f"row {row_number:02d}: {pixels(row)}",
                )
                if expected not in text:
                    raise ValueError(
                        f"ppq{bank}:${image.address:04X} row {row_number} is not decoded exactly"
                    )


def render_report(images: list[Image]) -> str:
    lines = [
        "# Professor Pac-Man graphics and animation data",
        "",
        "Professor Pac-Man stores question artwork as native Astrocade two-bit",
        "pixels. It does not use Sea Wolf II's one-bit masks plus Function Generator",
        "expansion. Each PPQ image has a four-byte object-relative header followed by",
        "row-major packed pixels:",
        "",
        "| Offset | Field | Meaning |",
        "| ---: | --- | --- |",
        "| `+0` | X reference | Horizontal reference used by the object-position transform. |",
        "| `+1` | Y reference | Vertical reference used by the object-position transform. |",
        "| `+2` | Width | Source bytes per row; four two-bit pixels per byte. |",
        "| `+3` | Height | Number of rows. |",
        "| `+4` | Pixels | `width × height` bytes, top-to-bottom and left-to-right. |",
        "",
        "Within each byte, pixels are ordered bits 7-6, 5-4, 3-2, and 1-0.",
        "The source comments render palette indices as compact `.123` strings.",
        "Those digits are stored pixel values, not fixed colors: Astrocade color",
        "registers and object modes determine their displayed palette.",
        "",
        "## Rendering path",
        "",
        "```mermaid",
        "flowchart TD",
        "    T[\"PPQ TERSE action\"] --> D[\"Apply object descriptor\"]",
        "    D --> P[\"Resolve object position and mode\"]",
        "    P --> H[\"Read image header\"]",
        "    H --> B[\"Pattern-board transfer\"]",
        "    B --> V[\"2-bpp screen RAM\"]",
        "```",
        "",
        "`APPLY_AND_DRAW_OBJECT` combines descriptor application and the immediate",
        "draw. Variant-indexed families select an image address from a word table",
        "before making the same call. Animated families use an extended object",
        "descriptor: its high flag bit selects an animation payload, and the task",
        "update path changes the current image pointer and object coordinates before",
        "the renderer runs. The bitmap record itself remains the same native 2-bpp",
        "format whether selected directly, through a variant table, or by animation.",
        "",
        "## Object and animation descriptors",
        "",
        "The word at `$1CB4`, named `APPLY_OBJECT_DESCRIPTOR`, distinguishes a direct",
        "image record from an extended object descriptor by bit 7 of byte `+2`.",
        "",
        "| Offset | Direct image | Extended descriptor |",
        "| ---: | --- | --- |",
        "| `+0` | X reference | Auxiliary byte copied into object animation state when flag bit 1 is set |",
        "| `+1` | Y reference | Not consumed by the descriptor installer |",
        "| `+2` | Source-byte width | Low nibble becomes object control flags; bit 7 selects the extended form |",
        "| `+3...` | Height and packed pixels | Variable animation/object payload retained in the task object |",
        "",
        "For an extended descriptor, flag bit 0 resets the associated animation state;",
        "flag bit 1 installs byte `+0` and forces the initial state to one; flag bit 3",
        "selects the two-byte setup form. The installer retains a pointer into the",
        "remaining payload. Per-tick object code consumes that state, updates position",
        "and rendering controls, and publishes the image pointer later used by the same",
        "native drawing path.",
        "",
        "This separation is why the PPQ ROMs do not contain a single universal",
        "“animation frame” structure. An animation is the composition of a TERSE task,",
        "an extended object descriptor, motion/control data, and one or more ordinary",
        "2-bpp images. The mirror-flock family demonstrates all four layers: three",
        "child actions install separate motion descriptors, the scene owns a",
        "three-entry motion table, and the outer answer actions draw either the primary",
        "or mirrored 52×42 bird image. Other families use task-vector words to switch",
        "update behavior while retaining the same image-record ABI.",
        "",
        "## Decoded inventory",
        "",
        "| PPQ | Images | Direct | Table/atlas selected | Packed bytes |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for bank in range(1, 15):
        bank_images = [image for image in images if image.bank == bank]
        direct = sum(image.direct for image in bank_images)
        packed = sum(len(image.data) for image in bank_images)
        lines.append(
            f"| `ppq{bank}` | {len(bank_images)} | {direct} | "
            f"{len(bank_images) - direct} | {packed} |"
        )
    lines.append(
        f"| **Total** | **{len(images)}** | **{sum(image.direct for image in images)}** | "
        f"**{sum(not image.direct for image in images)}** | "
        f"**{sum(len(image.data) for image in images)}** |"
    )
    lines.extend(
        [
            "",
            "Every listed record is selected by a reachable question-family graph,",
            "a variant image table used at a draw site, or PPQ6's pointer-addressed",
            "hand/figure atlas. The ranges are non-overlapping and remain inside the",
            "active `$4000-$7FFF` bank window.",
            "",
            "Representative source records include the 52×42 bird image and its",
            "mirror variant, telephone and dial components, maze pieces, die faces,",
            "vehicles, table-setting objects, and mirrored dog/deer figures. Inline",
            "rows make the exact stored image readable without assigning palette",
            "colors that the record does not own.",
            "",
            "Run `python3 tools/analyze_ppq_graphics.py roms/profpac.zip --check-sources`",
            "to validate the record geometry, range separation, and inline source",
            "annotations.",
        ]
    )
    return "\n".join(lines) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("archive", type=Path)
    parser.add_argument("--source-root", type=Path, default=Path("."))
    parser.add_argument("--check-sources", action="store_true")
    parser.add_argument("--write-report", type=Path)
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()

    images = discover_images(args.archive, args.source_root)
    if args.check_sources:
        check_sources(args.source_root, images)
    report = render_report(images)
    if args.write_report:
        args.write_report.write_text(report, encoding="utf-8")
    if not args.quiet:
        sys.stdout.write(report)


if __name__ == "__main__":
    main()
