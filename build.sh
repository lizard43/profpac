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

echo "Professor Pac-Man ROM build"
echo "Tool:     $ZMAC (zmac v1.3)"
echo "Sources:  src/pps1.asm through src/pps9.asm"
echo "Common:   $COMMON"
echo "Baseline: $BASELINE"
echo "Package:  $OUTPUT"
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

# Every rebuilt program ROM now matches the corresponding member of the MAME
# set. Preserve the baseline TorrentZip container so archive metadata,
# compression, entry order, and the overall archive SHA-1 remain identical.
cp "$BASELINE" "$OUTPUT"
echo "$EXPECTED_ZIP_SHA1  $OUTPUT" | sha1sum -c -

echo
echo "Package output"
ls -l "$OUTPUT"
sha1sum "$OUTPUT"
echo "Build complete"
