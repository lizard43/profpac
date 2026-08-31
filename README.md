# Professor Pac-Man disassembly

Professor Pac-Man is a 1983 quiz game developed by Dave Nutting Associates and
published by Bally Midway. It uses the final and most heavily expanded member
of the Astrocade arcade hardware family: a Z80, 16-color screen RAM, stereo
Astrocade sound, banked program ROM, and a 640 KB EPROM board containing the
animated question library.

The source preserves the physical ROM organization, documents the complete MAME
memory layout, identifies the reset and threaded-runtime entry points, and
separates executable ROM from the question database. Native Z80 bodies are
expressed mnemonically; TERSE definitions use structured execution tokens and
inline operands; graphics and unclassified tables retain addressed byte
definitions that reproduce the original devices exactly.

## Contents

- `src/pps1.asm`-`src/pps9.asm` - byte-exact source for the nine program ROMs
- `src/profpac_common.include` - shared hardware and runtime definitions
- `build.sh` - assembles and verifies all nine program ROMs
- `hardware.md` - CPU, memory, banking, video, sound, and control interface
- `native_code.md` - native-code coverage and reset, interrupt, banking, I/O,
  video, sound, input, and self-test paths
- `terse.md` - threaded-runtime architecture and register model
- `terse_vocabulary.md` - resident words, stack effects, and cross-game lineage
- `threaded_code.md` - colon definitions, execution-token coverage, and roots
- `development_status.md` - reverse-engineering coverage and planned work
- `roms/orig/profpac.zip` - canonical MAME archive used for verification

The fourteen `ppq` ROMs form the banked question and presentation database.
The ten `pls153a` files contain programmable-logic fuse maps for the CPU, EPROM,
game, and screen-RAM boards. They describe hardware logic rather than Z80
address-space contents.

## Build

Requirements:

- zmac 1.3 at `tools/zmac`
- Python 3 and POSIX shell utilities including `cmp`, `sha1sum`, and `unzip`
- an unmodified MAME `profpac` ROM set

Place the canonical MAME archive at `roms/orig/profpac.zip`, then run:

```sh
chmod +x build.sh
./build.sh
```

The script assembles each physical program ROM independently and compares its
8 KB image byte-for-byte with the corresponding member of the MAME archive.
Verified program ROMs are written as `roms/pps1` through `roms/pps9`; zmac
listings are retained under `build/`. It then creates a new 33-member
TorrentZip-compatible `roms/profpac.zip` from the rebuilt program ROMs and the
unchanged question-ROM and PLD members carried from the baseline. The generated
archive is tested, compared byte-for-byte with the baseline, and checked
against the canonical SHA-1
`fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c`.

Expected SHA-1 values:

| ROM | SHA-1 |
| --- | --- |
| `pps1` | `f7a9606ce6d66c3e6d210cc25572904aeab2b6c8` |
| `pps2` | `b730b24088dcfddbe954670ff9212b7383c923f6` |
| `pps3` | `ffbb156f417d20478117b39de28a15680993b528` |
| `pps4` | `33c797c690801afded45091d822347e1ecc72b54` |
| `pps5` | `fb4d3ba40697425d69ee19bfdcf00aea1df5fa80` |
| `pps6` | `f706cef6518b7d839377aa8a7c75fdeed4985c57` |
| `pps7` | `201b930cca9669114ffc97978cade69587e34a0f` |
| `pps8` | `786b30cd7a7db55bdde05909d7a1a7f122b6e546` |
| `pps9` | `8b7ed84090dbc5181deef6f55ec755c05d4c0d5e` |

## Program architecture

```mermaid
flowchart TD
    Reset["Z80 reset and diagnostics"] --> Runtime["Native TERSE primitives"]
    Runtime --> Threaded["Direct-threaded game words"]
    Threaded --> Presentation["Question and animation presentation"]
    Presentation --> Bank["Select EPROM bank through port $F3"]
    Bank --> Questions["PPQ question database at $4000-$7FFF"]
```

The native kernel and threaded application share the program ROMs. Compiled
colon definitions begin with `RST $08`; the runtime at `$0008` transfers the
nested thread address into `BC`, and `TERSE_NEXT` at `$00F6` fetches each
following 16-bit execution token. See [native_code.md](native_code.md) and
[terse.md](terse.md). The decoded colon definitions and control-flow roots are
mapped in [threaded_code.md](threaded_code.md).

## ROM organization

| Devices | Physical capacity | Role |
| --- | ---: | --- |
| `pps1`, `pps2` | 16 KB | Fixed ROM at `$0000-$3FFF` |
| `pps3`-`pps8` | 48 KB | Banked program, graphics, and table data |
| `pps9` | 8 KB | Fixed ROM at `$C000-$DFFF` |
| `ppq1`-`ppq14` | 224 KB populated | Question and animation EPROM data |
| PLD dumps | 10 devices | Address decoding and board control logic |

The installed EPROM board is physically capable of 640 KB. This ROM set
populates fourteen 16 KB question devices, not 640 KB of question content.
MAME allocates a 640 KB region and leaves the unused space erased.

## Hardware overview

```mermaid
flowchart LR
    CPU["Z80"] --> Fixed["Fixed PPS ROM"]
    CPU --> Banks["Banked PPS and PPQ ROM"]
    CPU --> RAM["Work and battery RAM"]
    CPU --> Video["16-color screen RAM"]
    CPU --> IO["Controls, lamps, counters"]
    CPU --> Sound["Two Astrocade sound chips"]
```

Detailed addresses and bank behavior are maintained in
[hardware.md](hardware.md).

## Self-test surface

The operations manual documents unusually extensive built-in diagnostics:

- 16-color write-mode and intercept tests
- screen RAM, scratch-pad RAM, and write-protect tests
- Super Game and 16K ROM tests
- continuous heat testing with retained pass, error, and reset counters
- crosshatch, color-bar, grey-level, and purity displays
- stereo sound, switch, lamp, LED, and coin-counter tests
- bookkeeping statistics and operator game settings

These screens define behavioral anchors for routine identification because
their observable results are specified independently of the ROM.

## Provenance

The binary baseline is the MAME `profpac` set described by
`src/mame/bally/astrocde.cpp`. Hardware names, board numbers, switch meanings,
and diagnostic descriptions are drawn from the Bally Midway Professor Pac-Man
operations manual and its schematics.

Documented production credits identify Dave Nutting Associates as developer,
Rick Frankel as programmer, Mark Steven Pierce and Sue Forner for graphics,
and Marc Canter for sound and music. Johnny Lott and *RePlay* publisher Ed
Adlum originated the earlier Pac-Man-plus-quiz proposal; the shipped game is
the DNA animated multiple-choice design.
