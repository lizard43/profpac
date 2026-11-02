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

[WB PR #38](https://github.com/lizard43/dnaTERSE-WB/pull/38) owns `runtime/components/profpac-current/`; [ICEBOX PR #104](https://github.com/lizard43/dnaIceBox/pull/104) mirrors it in `terse/runtime/profpac-direct-threaded/`. Their latest working version is **v20261102-0003**; their manifest identity and all four dictionary layers advance together. There are no historical copied runtime packages or separate Stage 5 overlay. The original PPS1 binary hash `f7a9606ce6d66c3e6d210cc25572904aeab2b6c8` is retained solely as provenance for unchanged original bytes. Host interpreters and XC are independent and untouched.

The corrected game dictionary contains **435 original RST $08 game words**, after seven false positives are removed. Other layers retain **100 root**, **46 platform** and **130 question-initializer** entries.

## Reproduction and acceptance

```sh
node tools/analyze_shared_threads.js --token-map --check-sources
node tools/analyze_shared_threads.js --state-audit --check-sources
node tools/analyze_shared_threads.js --state-check --check-sources
./build.sh --clean
```

The source-byte reconstruction has been compared against its original addressed bytes. **Real-ROM analyzer execution, assembler rebuild, 23-ROM hashes and canonical ZIP equality have not been run through this GitHub-only access**, and remain merge acceptance checks. The audit and dictionary evidence distinguish verified native and root-word stack behavior from unproven compound effects.
