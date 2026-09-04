#!/bin/sh
set -eu

ZMAC=${ZMAC:-tools/zmac}
PROGRAM_COMMON=src/profpac_common.include
QUESTION_COMMON=src/profpac_question_common.include
QUESTION_FAMILY_ANALYZER=tools/analyze_question_families.py
BASELINE=roms/orig/profpac.zip
ROM_OUTPUT_DIR=roms
LISTING_OUTPUT_DIR=build
OUTPUT=$ROM_OUTPUT_DIR/profpac.zip
EXPECTED_ZIP_SHA1=fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c

if [ ! -x "$ZMAC" ]; then
    echo "zmac not found or not executable: $ZMAC" >&2
    exit 1
fi

for common_file in "$PROGRAM_COMMON" "$QUESTION_COMMON"; do
    if [ ! -f "$common_file" ]; then
        echo "shared include not found: $common_file" >&2
        exit 1
    fi
done

if [ ! -f "$BASELINE" ]; then
    echo "MAME baseline not found: $BASELINE" >&2
    exit 1
fi

if ! command -v python3 >/dev/null 2>&1; then
    echo "python3 not found; required for deterministic MAME ZIP creation" >&2
    exit 1
fi

echo "Professor Pac-Man ROM build"
echo "Tool:       $ZMAC (zmac v1.3)"
echo "Program:    src/pps1.asm through src/pps9.asm"
echo "Questions:  src/ppq1.asm through src/ppq14.asm"
echo "Common:     $PROGRAM_COMMON"
echo "            $QUESTION_COMMON"
echo "Analysis:   $QUESTION_FAMILY_ANALYZER"
echo "Baseline:   $BASELINE"
echo "ROM output: $ROM_OUTPUT_DIR/pps1 through $ROM_OUTPUT_DIR/pps9"
echo "            $ROM_OUTPUT_DIR/ppq1 through $ROM_OUTPUT_DIR/ppq14"
echo "Listings:   $LISTING_OUTPUT_DIR/"
echo "Package:    $OUTPUT"
echo

baseline_sha1_line=$(sha1sum "$BASELINE")
baseline_sha1=${baseline_sha1_line%% *}
echo "Baseline SHA-1 expected: $EXPECTED_ZIP_SHA1"
echo "Baseline SHA-1 actual:   $baseline_sha1"
if [ "$baseline_sha1" != "$EXPECTED_ZIP_SHA1" ]; then
    echo "SHA-1 mismatch for $BASELINE" >&2
    exit 1
fi
echo

mkdir -p "$ROM_OUTPUT_DIR" "$LISTING_OUTPUT_DIR"
rm -f "$OUTPUT"

build_rom()
{
    rom_name=$1
    source_file=$2
    rom_kind=$3
    expected_sha1=$4
    output_base=${source_file%.*}

    echo "Assembling $rom_kind ROM $rom_name from $source_file"
    rm -f "$output_base.bin" "$output_base.lst"
    "$ZMAC" "$source_file"

    if [ ! -f "$output_base.bin" ] || [ ! -f "$output_base.lst" ]; then
        echo "zmac did not produce $output_base.bin and $output_base.lst" >&2
        exit 1
    fi

    mv "$output_base.bin" "$ROM_OUTPUT_DIR/$rom_name"
    mv "$output_base.lst" "$LISTING_OUTPUT_DIR/professor_pacman_$rom_name.lst"

    actual_sha1_line=$(sha1sum "$ROM_OUTPUT_DIR/$rom_name")
    actual_sha1=${actual_sha1_line%% *}
    echo "SHA-1 expected: $expected_sha1"
    echo "SHA-1 actual:   $actual_sha1"
    if [ "$actual_sha1" != "$expected_sha1" ]; then
        echo "SHA-1 mismatch for $ROM_OUTPUT_DIR/$rom_name" >&2
        exit 1
    fi

    unzip -p "$BASELINE" "$rom_name" | cmp - "$ROM_OUTPUT_DIR/$rom_name"
    echo "Verified SHA-1 and $BASELINE:$rom_name"
}

build_rom pps1 src/pps1.asm program f7a9606ce6d66c3e6d210cc25572904aeab2b6c8
build_rom pps2 src/pps2.asm program b730b24088dcfddbe954670ff9212b7383c923f6
build_rom pps3 src/pps3.asm program ffbb156f417d20478117b39de28a15680993b528
build_rom pps4 src/pps4.asm program 33c797c690801afded45091d822347e1ecc72b54
build_rom pps5 src/pps5.asm program fb4d3ba40697425d69ee19bfdcf00aea1df5fa80
build_rom pps6 src/pps6.asm program f706cef6518b7d839377aa8a7c75fdeed4985c57
build_rom pps7 src/pps7.asm program 201b930cca9669114ffc97978cade69587e34a0f
build_rom pps8 src/pps8.asm program 786b30cd7a7db55bdde05909d7a1a7f122b6e546
build_rom pps9 src/pps9.asm program 8b7ed84090dbc5181deef6f55ec755c05d4c0d5e

build_rom ppq1 src/ppq1.asm question d81caaa639f63d971a0d3199b9da6359211edf3d
build_rom ppq2 src/ppq2.asm question f9455868c70f479ede0e0621f21f69da165d9b7a
build_rom ppq3 src/ppq3.asm question 24fb14c6b31b7f27e0737605cfbf963d29dd3fc5
build_rom ppq4 src/ppq4.asm question 92d2391e4c8aef46cc8e92b8cf9a8ec9a1b5ff68
build_rom ppq5 src/ppq5.asm question d5d6afaadb022b109c14c3911eceb0769204df6c
build_rom ppq6 src/ppq6.asm question 45b4925709da6790676319268398f6cfcf12794b
build_rom ppq7 src/ppq7.asm question f2f09fdb13920012a6a43958b640d7a06c0c8e69
build_rom ppq8 src/ppq8.asm question e8fe02c85e90320680a14ad560204d5c235730ad
build_rom ppq9 src/ppq9.asm question 2f03f799c319309b5ebf9a5299891d1824398ba5
build_rom ppq10 src/ppq10.asm question db991b93001d2da16b398ee8e9b01b8f0dfe5740
build_rom ppq11 src/ppq11.asm question 7f68a8b89117b7ab8724869401a861fe7cff28d9
build_rom ppq12 src/ppq12.asm question c7052bf9ce9d2006dda5ddc07ad164d0119b86ea
build_rom ppq13 src/ppq13.asm question d47655300c8747698a46f30deb65fe762073e869
build_rom ppq14 src/ppq14.asm question 73d28a79b76795d3016dd608f9ab3d255f40e477

echo
echo "Program ROM outputs"
sha1sum roms/pps1 roms/pps2 roms/pps3 roms/pps4 roms/pps5 \
    roms/pps6 roms/pps7 roms/pps8 roms/pps9

echo
echo "Question ROM outputs"
sha1sum roms/ppq1 roms/ppq2 roms/ppq3 roms/ppq4 roms/ppq5 \
    roms/ppq6 roms/ppq7 roms/ppq8 roms/ppq9 roms/ppq10 \
    roms/ppq11 roms/ppq12 roms/ppq13 roms/ppq14

echo
echo "Listing outputs"
ls -l "$LISTING_OUTPUT_DIR"/professor_pacman_pps*.lst \
    "$LISTING_OUTPUT_DIR"/professor_pacman_ppq*.lst

# Build the complete MAME set from the twenty-three assembled program and
# question ROMs plus the unchanged PLD members carried from the baseline.  The
# archive is emitted in TorrentZip form so the complete container is
# reproducible, not merely content-equivalent.
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

for prefix, count in (("pps", 9), ("ppq", 14)):
    for number in range(1, count + 1):
        name = f"{prefix}{number}"
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

echo
echo "Package output"
ls -l "$OUTPUT"
package_sha1_line=$(sha1sum "$OUTPUT")
package_sha1=${package_sha1_line%% *}
echo "Package SHA-1 expected: $EXPECTED_ZIP_SHA1"
echo "Package SHA-1 actual:   $package_sha1"
if [ "$package_sha1" != "$EXPECTED_ZIP_SHA1" ]; then
    echo "SHA-1 mismatch for $OUTPUT" >&2
    exit 1
fi
echo "Verified package SHA-1"

python3 "$QUESTION_FAMILY_ANALYZER" --check-sources --quiet "$OUTPUT"
echo "Verified 130 rooted initializers and 45 action-list families"
echo "Build complete"
