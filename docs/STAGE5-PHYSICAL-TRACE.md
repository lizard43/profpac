# Stage 5 — PPS8 physical shared-state trace

Source: addressed bytes in `src/pps8.asm`, configuration 1, `$BA31–$BCDA`. Entry streams are decoded by the original-ROM analyzer's token width/branch rules. Original ROM verification remains a separate acceptance gate.

Each physical LIT location appears **once** here, assigned to its genuine parent colon word. A following `DUP` or `B@` is not equivalent to a write. Addresses are observed, not original variable names.

## Genuine colon-root reachability

| Root | Reachable physical TERSE tokens | Caller |
| --- | ---: | --- |
| $BA31 | 140 | $BBB8 at $BBCE |
| $BBE8 | 92 | $BE66 at $BEE2 |

**232 physical token cells across two genuine colon definitions**, not nine separate colon definitions. The former addresses $BACD, $BAD9, $BAED, $BB27, $BB68, $BC83, $BC8F each encode `XT_equal` ($01CF) and have been removed as false colon roots. The original source was byte-compared over the complete 615-byte two-word region.

## Physical accesses to the shared RAM fields

| LIT cell | RAM field | Following primitive | Classification | Reachable from |
| --- | --- | --- | --- | --- |
| $BA38 | $F71A | `! (word store)` | direct | $BA31 |
| $BA40 | $F71C | `! (word store)` | direct | $BA31 |
| $BA51 | $F6EB | `BZERO (byte zero)` | direct | $BA31 |
| $BA5B | $F718 | `! (word store)` | direct | $BA31 |
| $BA63 | $F716 | `! (word store)` | direct | $BA31 |
| $BA85 | $F716 | `@ (word fetch)` | direct | $BA31 |
| $BA91 | $F71A | `@ (word fetch)` | direct | $BA31 |
| $BAAA | $F71C | `@ (word fetch)` | direct | $BA31 |
| $BABF | $F718 | `@ (word fetch)` | direct | $BA31 |
| $BAC5 | $F71C | `@ (word fetch)` | direct | $BA31 |
| $BAD3 | $F716 | `@ (word fetch)` | direct | $BA31 |
| $BAE1 | $F6EB | `DUP (address duplication)` | not a direct access | $BA31 |
| $BAFF | $F71C | `! (word store)` | direct | $BA31 |
| $BB14 | $F718 | `! (word store)` | direct | $BA31 |
| $BB1E | $F6EB | `B@ (byte fetch)` | direct | $BA31 |
| $BB37 | $F71A | `! (word store)` | direct | $BA31 |
| $BB4B | $F718 | `! (word store)` | direct | $BA31 |
| $BB55 | $F716 | `! (word store)` | direct | $BA31 |
| $BB5F | $F6EB | `B@ (byte fetch)` | direct | $BA31 |
| $BB78 | $F71C | `! (word store)` | direct | $BA31 |
| $BB8C | $F718 | `! (word store)` | direct | $BA31 |
| $BB92 | $F6EB | `B@ (byte fetch)` | direct | $BA31 |
| $BBFA | $F71C | `! (word store)` | direct | $BBE8 |
| $BC0E | $F718 | `! (word store)` | direct | $BBE8 |
| $BC18 | $F716 | `! (word store)` | direct | $BBE8 |
| $BC43 | $F716 | `@ (word fetch)` | direct | $BBE8 |
| $BC4F | $F71C | `@ (word fetch)` | direct | $BBE8 |
| $BC68 | $F71C | `@ (word fetch)` | direct | $BBE8 |
| $BC7D | $F718 | `@ (word fetch)` | direct | $BBE8 |
| $BC89 | $F716 | `@ (word fetch)` | direct | $BBE8 |
| $BC9B | $F718 | `! (word store)` | direct | $BBE8 |
| $BCA4 | $F716 | `! (word store)` | direct | $BBE8 |
| $BCAC | $F71C | `! (word store)` | direct | $BBE8 |

## Proven constant state assignments

The following are consecutive TERSE producer/address/store sequences (not labels inferred from a screenshot). Values are 16-bit little-endian; the signed forms are shown for interpretation only.

| Entrypoint path | Producer and store | RAM target | Stored value |
| --- | --- | --- | --- |
| Feedback `$BA31` | `LIT $FFFF; LIT $F71A; !` at `$BA34–$BA3C` | `$F71A` | `$FFFF` (−1) |
| Feedback `$BA31` | `1; LIT $F71C; !` at `$BA3E–$BA44` | `$F71C` | `$0001` |
| Feedback `$BA31` | `LIT $F6EB; BZERO` at `$BA51–$BA55` | `$F6EB` | `$00` |
| Feedback `$BA31` | `LIT $0096; LIT $F718; !` at `$BA57–$BA5F` | `$F718` | `$0096` (+150) |
| Feedback `$BA31` | `0; LIT $F716; !` at `$BA61–$BA67` | `$F716` | `$0000` |
| Application `$BBE8` | `LIT $FFFF; LIT $F71C; !` at `$BBF6–$BBFE` | `$F71C` | `$FFFF` (−1) |
| Application `$BBE8` | `LIT $FF64; LIT $F718; !` at `$BC0A–$BC12` | `$F718` | `$FF64` (−156) |
| Application `$BBE8` | `LIT $FF9D; LIT $F716; !` at `$BC14–$BC1C` | `$F716` | `$FF9D` (−99) |

Together these prove **distinct feedback and application initial-state presets**: feedback initializes four words plus a byte, while application initializes three of the words. The values and subsequent object operations suggest display/presentation state; the final names of these RAM fields still require consumer tracing.

## Evidence and interpretation

- The `$BA31` entry writes the quartet via word-store at `$BA38`, `$BA40`, `$BA5B`, `$BA63`, and zeroes the `$F6EB` byte at `$BA51`.
- The $BA31 word branches through its own read/transfer region; no additional RST entrypoints exist there.
- `$BAE1` loads the address `$F6EB` and executes `DUP`. That instruction is **not** an observed memory write; a later consumer must be followed to establish the use.
- The $BBE8 application word sets several quartet fields, then executes internal branch and loop paths through the closing tail.
- The stream invokes object-record and graphics-related tokens (`$1D24`, `$1D3C`, `$1D54`, `$1E8E`, `$2083`) in addition to memory primitives. These tokens establish application state flowing into object/render state, not an independently proven score or difficulty-field identity.
- The `CORRECT_FEEDBACK_TASK` uses `OUTP` (`$BBC2`) and invokes `$BA31` at `$BBCE`. The `MAIN_APPLICATION` invokes `$BBE8` at `$BEE2`. The call edges refer to actual physical token cells.
- Full stack effects of the compound words require resolution of external object/task words, whose effects can be conditional. Do not invent them from a direct RAM-store count.

## Verification

Run `node tools/analyze_shared_threads.js --state-audit --check-sources` and `node tools/analyze_shared_threads.js --state-check --check-sources` against `roms/orig/profpac.zip`, then `./build.sh --clean` for the original-ROM byte comparison. This trace is statically derived from the repository's addressed source and is **not** a claim that those local commands were executed.

For the complete 232-cell, bank-aware shared execution-token map, see [Stage 5 token map](STAGE5-TOKEN-MAP.md). Regenerate it using `node tools/analyze_shared_threads.js --token-map --check-sources` against the original ROM.

## Recovered animation-axis semantics and display hardware

Four original PPS1 native routines operate on two presentation-axis words in the active object record:

| Native XT | Data stack | Object offset | Mechanism |
| --- | --- | --- | --- |
| `$1C5F` `XT_SET_CURRENT_OBJECT_AXIS_A` | `( axisA -- )` | `+$34/+$35` | Convert via `$1B3C` then store |
| `$1C71` `XT_SET_CURRENT_OBJECT_AXIS_B` | `( axisB -- )` | `+$36/+$37` | Convert via `$1B9E` then store |
| `$1C96` `XT_GET_OBJECT_AXIS_A` | `( object-record -- axisA )` | `+$34/+$35` | Read and convert via `$1B60` |
| `$1CA5` `XT_GET_OBJECT_AXIS_B` | `( object-record -- axisB )` | `+$36/+$37` | Read and convert via `$1BB3` |

The two true PPS8 root words compare object axes with these work-RAM targets and use per-axis steps to interpolate their presentation state:

| RAM | Established role | Evidence |
| --- | --- | --- |
| `$F716` | Axis-B terminal target | Compared with `XT_GET_OBJECT_AXIS_B` at `$BA81/$BC3F` |
| `$F718` | Axis-A terminal target | Compared with `XT_GET_OBJECT_AXIS_A` at `$BABD/$BC7B` |
| `$F71A` | Feedback axis-B motion step | Read at `$BA91`, doubled and applied by `XT_SET_CURRENT_OBJECT_AXIS_B` |
| `$F71C` | Feedback axis-A step and application shared step | Read at `$BAAA/$BC4F/$BC68`, doubled before corresponding axis setters |
| `$F6EB` | Feedback animation phase counter | Zeroed at `$BA51`, incremented at `$BAE7`, checked against 1, 2, 3, and terminal 4 |

The A/B axes correspond to two native presentation dimensions. Their mapping to the visible screen's horizontal and vertical directions is intentionally not invented.

**Graphics I/O rather than sound:** PPS1 `XT_OUTP` (`$02D8`) pops the port into BC and value into HL before `OUT (C),L`. Thus `$BBC2` outputs `$15` to `PORT_SCREEN_PAGE $BF`, `$BBF2` outputs `$2A` to the same port, and `$BCD3` outputs `$00`. These are **screen-page operations**, not writes to the audio ports. The normal application calls the genuine PPS2 `SCREEN_INTERCEPT_ACTION_2D2B` (`$BBF4`), whose native `$2D08` implementation writes `PORT_SCREEN_INTERCEPT $C3` and `PORT_SCREEN_WRITE_MASK $C5`. The tail calls the PPS2 glyph-refresh native XT `$2083`, which delegates to the fixed-ROM glyph routine `$1FC4`. These establish the display/drawing path from the animated state words; any sound response is outside these immediate calls.

**Current runtime inventory:** `v20261102-0006`, one package per library, **100 native-root, 52 platform, 436 program-colon and 130 question-initializer words**. The extra program colon `$2D2B` is a true original `RST $08` action recovered during the Stage 5 graphics trace. There are no historical Professor Pac-Man runtime packages to preserve.

**Independent original-ROM acceptance:** the original `profpac.zip` archive SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c` and each of the 23 program/question ROM SHA-1s were checked against the library manifest; the reconstructed **617 PPS8 bytes (including both colon entry opcodes)** were compared directly against original PPS8 with zero mismatches. New `tools/verify_stage5_rom.js` makes this check reproducible, additionally validating the 16 decoded bytes of PPS2's `$2D2B` screen action. The complete zmac-produced ROM/ZIP rebuild is separately required and is invoked by `./build.sh --clean`, which now runs the Stage 5 checks.

