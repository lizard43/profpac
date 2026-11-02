# Stage 5 — Professor Pac-Man PPS8 state and presentation reverse engineering

## Corrected execution model

The configuration-1 PPS8 byte stream has **two genuine RST $08 TERSE colon definitions**, at **$BA31** and **$BBE8**. Seven addresses previously described as independent/shared colon entrypoints—$BACD, $BAD9, $BAED, $BB27, $BB68, $BC83 and $BC8F—are instead the low bytes of the normal 16-bit execution token **$01CF (XT_equal)**. The old nine-entry Stage 4 model was a false-positive caused by decoding the $CF byte as an 8080/Z80 RST instruction outside its physical instruction context. All seven false definitions have been removed from the source and runtime game dictionary.

The two true words comprise **140** and **92** address-reachable TERSE execution cells respectively: **232 unique physical token starts**. Their byte-exact symbolic `dw` source, with inline operands, is in `src/pps8.asm`, and a complete, physical-address-indexed listing is in [STAGE5-TOKEN-MAP.md](STAGE5-TOKEN-MAP.md). A static source-byte comparison of both reconstructed streams (615 bytes) found **zero differences** against the prior physically addressed source bytes. The original ROM ZIP / entire build remains a separate required acceptance check.

## Proven caller and hardware relationships

- `CORRECT_FEEDBACK_TASK` ($BBB8) invokes `OUTP` at $BBC2 and calls the genuine state word $BA31 from token cell $BBCE. The output port action is actual I/O; a definitive audible behavior requires tracing its port/value and downstream sound handling.
- `MAIN_APPLICATION` ($BE66) calls $BBE8 from token cell $BEE2. The $BBE8 stream includes `OUTP` at $BBF2 and $BCD3, object setters, an object update loop, and terminal task bookkeeping.
- Both words access work RAM ($E800–$FFFF): four adjacent 16-bit fields $F716, $F718, $F71A, $F71C and a byte at $F6EB. They are not located in battery-backed $E000–$E7FF RAM.
- The two-root traversal contains **33 physical LIT references** to those five watched fields: $F6EB 5, $F716 8, $F718 8, $F71A 3, and $F71C 9. `LIT address; DUP` is not by itself a RAM access; only subsequent operations establish reads/writes. The per-site report is [STAGE5-PHYSICAL-TRACE.md](STAGE5-PHYSICAL-TRACE.md).

## Distinct state initialization presets

Each row below is a sequential TERSE constant producer, address literal, and store primitive. The hex value is the actual stored bit pattern.

| True colon root | RAM | Value | Source physical producer / store |
| --- | --- | --- | --- |
| $BA31 feedback | $F71A | $FFFF | $BA34 / $BA3C |
| $BA31 feedback | $F71C | $0001 | $BA3E / $BA44 |
| $BA31 feedback | $F6EB | $00 | $BA51 / $BA55 (`BZERO`) |
| $BA31 feedback | $F718 | $0096 | $BA57 / $BA5F |
| $BA31 feedback | $F716 | $0000 | $BA61 / $BA67 |
| $BBE8 application | $F71C | $FFFF | $BBF6 / $BBFE |
| $BBE8 application | $F718 | $FF64 | $BC0A / $BC12 |
| $BBE8 application | $F716 | $FF9D | $BC14 / $BC1C |

This proves two distinct presentation-state presets rather than final field names. Other writes in conditional paths are in the physical trace.

## PPS1 object-word stack recovery

The Stage 5 streams call the resident PPS1 object vocabulary. Native Z80 source establishes these data-stack effects:

| XT | Effect | Physical evidence |
| --- | --- | --- |
| $1D24 | `( value1 -- )` | POP HL; transform; write current-object +25/+26 |
| $1D3C | `( value2 -- )` | POP HL; transform; write current-object +27/+28 |
| $1D54 | `( value1 value2 -- )` | TERSE calls $1D3C then $1D24 |
| $1D9B | `( object-record -- value1 )` | POP record address; read +25/+26; transform; PUSH result |
| $1DAA | `( object-record -- value2 )` | POP record address; read +27/+28; transform; PUSH result |
| $1E7D | `( byte -- )` | POP DE; store E to current-object +24 |
| $1E8E | `( word -- )` | POP DE; store E/D to current-object +29/+30 |

The native routines have meaningful labels and function headers in `src/pps1.asm`. Their contracts are synchronized into the **primary** WB/ICEBOX platform dictionaries; $1D54 is also reflected in the game dictionary. The two whole task/state words also call additional task/object words, so their *complete compound stack contracts* remain unspecified, rather than guessed.

## One evolving library, not revision snapshots

[WB PR #38](https://github.com/lizard43/dnaTERSE-WB/pull/38) owns `runtime/components/profpac-current/`; [ICEBOX PR #104](https://github.com/lizard43/dnaIceBox/pull/104) mirrors it in `terse/runtime/profpac-direct-threaded/`. Their latest working version is **v20261102-0005**; their manifest identity and all four dictionary layers advance together. There are no historical copied runtime packages or separate Stage 5 overlay. The original PPS1 binary hash `f7a9606ce6d66c3e6d210cc25572904aeab2b6c8` is retained solely as provenance for unchanged original bytes. Host interpreters and XC are independent and untouched.

The corrected game dictionary contains **436 original RST $08 game words**, after seven false positives are removed. Other layers retain **100 root**, **52 platform** and **130 question-initializer** entries.

## Reproduction and acceptance

```sh
node tools/analyze_shared_threads.js --token-map --check-sources
node tools/analyze_shared_threads.js --state-audit --check-sources
node tools/analyze_shared_threads.js --state-check --check-sources
./build.sh --clean
```

The source-byte reconstruction has been compared against its original addressed bytes. **Original ZIP and all 23 original ROM hashes were checked through an independent original-archive extraction; the source bytes of both Stage 5 colon words were checked against original PPS8. The zmac rebuild, reconstructed ZIP comparison and Node test-suite executions have not been run in this environment**, and remain merge acceptance checks. The audit and dictionary evidence distinguish verified native and root-word stack behavior from unproven compound effects.

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

**Current runtime inventory:** `v20261102-0005`, one package per library, **100 native-root, 52 platform, 436 program-colon and 130 question-initializer words**. The extra program colon `$2D2B` is a true original `RST $08` action recovered during the Stage 5 graphics trace. There are no historical Professor Pac-Man runtime packages to preserve.

**Independent original-ROM acceptance:** the original `profpac.zip` archive SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c` and each of the 23 program/question ROM SHA-1s were checked against the library manifest; the reconstructed **617 PPS8 bytes (including both colon entry opcodes)** were compared directly against original PPS8 with zero mismatches. New `tools/verify_stage5_rom.js` makes this check reproducible, additionally validating the 16 decoded bytes of PPS2's `$2D2B` screen action. The complete zmac-produced ROM/ZIP rebuild is separately required and is invoked by `./build.sh --clean`, which now runs the Stage 5 checks.

