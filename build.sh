#!/bin/sh
set -eu

ZMAC=${ZMAC:-tools/zmac}
COMMON=src/profpac_common.include
BASELINE=roms/orig/profpac.zip
ROM_OUTPUT_DIR=roms
LISTING_OUTPUT_DIR=build
OUTPUT=$ROM_OUTPUT_DIR/profpac.zip
EXPECTED_ZIP_SHA1=fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c

if [ ! -x "$ZMAC" ]; then
    echo "zmac not found or not executable: $ZMAC" >&2
    exit 1
fi

if [ ! -f "$COMMON" ]; then
    echo "shared include not found: $COMMON" >&2
    exit 1
fi

if [ ! -f "$BASELINE" ]; then
    echo "MAME baseline not found: $BASELINE" >&2
    exit 1
fi

if ! command -v python3 >/dev/null 2>&1; then
    echo "python3 not found; required for deterministic MAME ZIP creation" >&2
    exit 1
fi

echo "Professor Pac-Man ROM build"
echo "Tool:     $ZMAC (zmac v1.3)"
echo "Sources:  src/pps1.asm through src/pps9.asm"
echo "Common:   $COMMON"
echo "Baseline: $BASELINE"
echo "Package:  $OUTPUT"
echo

echo "$EXPECTED_ZIP_SHA1  $BASELINE" | sha1sum -c -
echo

mkdir -p "$ROM_OUTPUT_DIR" "$LISTING_OUTPUT_DIR"
rm -f "$OUTPUT"

build_rom()
{
    rom_name=$1
    source_file=$2
    output_base=${source_file%.*}

    echo "Assembling program ROM $rom_name from $source_file"
    rm -f "$output_base.bin" "$output_base.lst"
    "$ZMAC" "$source_file"

    if [ ! -f "$output_base.bin" ] || [ ! -f "$output_base.lst" ]; then
        echo "zmac did not produce $output_base.bin and $output_base.lst" >&2
        exit 1
    fi

    mv "$output_base.bin" "$ROM_OUTPUT_DIR/$rom_name"
    mv "$output_base.lst" "$LISTING_OUTPUT_DIR/professor_pacman_$rom_name.lst"
    unzip -p "$BASELINE" "$rom_name" | cmp - "$ROM_OUTPUT_DIR/$rom_name"
    echo "Verified $ROM_OUTPUT_DIR/$rom_name against $BASELINE:$rom_name"
}

build_rom pps1 src/pps1.asm
build_rom pps2 src/pps2.asm
build_rom pps3 src/pps3.asm
build_rom pps4 src/pps4.asm
build_rom pps5 src/pps5.asm
build_rom pps6 src/pps6.asm
build_rom pps7 src/pps7.asm
build_rom pps8 src/pps8.asm
build_rom pps9 src/pps9.asm

echo
echo "Program ROM outputs"
sha1sum roms/pps1 roms/pps2 roms/pps3 roms/pps4 roms/pps5 \
    roms/pps6 roms/pps7 roms/pps8 roms/pps9

echo
echo "Listing outputs"
ls -l build/professor_pacman_pps1.lst build/professor_pacman_pps2.lst \
    build/professor_pacman_pps3.lst build/professor_pacman_pps4.lst \
    build/professor_pacman_pps5.lst build/professor_pacman_pps6.lst \
    build/professor_pacman_pps7.lst build/professor_pacman_pps8.lst \
    build/professor_pacman_pps9.lst

# Build the complete MAME set from the nine assembled program ROMs plus the
# unchanged question and PLD members carried from the baseline.  The archive is
# emitted in TorrentZip form so the complete container is reproducible, not
# merely content-equivalent.
python3 - "$BASELINE" "$OUTPUT" "$ROM_OUTPUT_DIR" <<'PY'
from pathlib import Path
import struct
import sys
import zipfile
import zlib

baseline = Path(sys.argv[1])
output = Path(sys.argv[2])
rom_dir = Path(sys.argv[3])
temporary = output.with_suffix(output.suffix + ".tmp")

with zipfile.ZipFile(baseline, "r") as source:
    members = {name: source.read(name) for name in source.namelist()}

for number in range(1, 10):
    name = f"pps{number}"
    members[name] = (rom_dir / name).read_bytes()

with zipfile.ZipFile(temporary, "w", compression=zipfile.ZIP_DEFLATED,
                     compresslevel=9, strict_timestamps=True) as target:
    for name in sorted(members, key=str.lower):
        info = zipfile.ZipInfo(name, (1996, 12, 24, 23, 32, 0))
        info.create_system = 0
        info.create_version = 0
        info.extract_version = 20
        info.external_attr = 0
        info.internal_attr = 0
        info.compress_type = zipfile.ZIP_DEFLATED
        target.writestr(info, members[name], compress_type=zipfile.ZIP_DEFLATED,
                        compresslevel=9)

raw = bytearray(temporary.read_bytes())
eocd = raw.rfind(b"PK\x05\x06")
if eocd < 0:
    raise SystemExit("generated ZIP has no end-of-central-directory record")
central_size = struct.unpack_from("<I", raw, eocd + 12)[0]
central_offset = struct.unpack_from("<I", raw, eocd + 16)[0]

# TorrentZip records maximum deflate in general-purpose flag bit 1 and clears
# host permission attributes. Python emits the same deflate streams but does
# not expose these two metadata controls.
position = 0
while position < central_offset:
    if raw[position:position + 4] != b"PK\x03\x04":
        raise SystemExit("invalid generated ZIP local-header sequence")
    struct.pack_into("<H", raw, position + 6, 2)
    compressed_size = struct.unpack_from("<I", raw, position + 18)[0]
    name_length, extra_length = struct.unpack_from("<HH", raw, position + 26)
    position += 30 + name_length + extra_length + compressed_size

position = central_offset
central_end = central_offset + central_size
while position < central_end:
    if raw[position:position + 4] != b"PK\x01\x02":
        raise SystemExit("invalid generated ZIP central-directory sequence")
    struct.pack_into("<H", raw, position + 8, 2)
    struct.pack_into("<H", raw, position + 36, 0)
    struct.pack_into("<I", raw, position + 38, 0)
    name_length, extra_length, comment_length = struct.unpack_from(
        "<HHH", raw, position + 28)
    position += 46 + name_length + extra_length + comment_length

central_crc = zlib.crc32(raw[central_offset:central_end]) & 0xFFFFFFFF
comment = f"TORRENTZIPPED-{central_crc:08X}".encode("ascii")
struct.pack_into("<H", raw, eocd + 20, len(comment))
raw[eocd + 22:] = comment
temporary.write_bytes(raw)
temporary.replace(output)
PY

unzip -t "$OUTPUT" >/dev/null
cmp "$OUTPUT" "$BASELINE"
echo "Verified $OUTPUT against $BASELINE: complete MAME archive"
echo "$EXPECTED_ZIP_SHA1  $OUTPUT" | sha1sum -c -

echo
echo "Package output"
ls -l "$OUTPUT"
sha1sum "$OUTPUT"
echo "Build complete"
