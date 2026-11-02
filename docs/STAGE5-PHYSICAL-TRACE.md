# Stage 5 — PPS8 physical shared-state trace

Source: addressed bytes in `src/pps8.asm`, configuration 1, `$BA31–$BCDA`. Entry streams are decoded by the original-ROM analyzer's token width/branch rules. Original ROM verification remains a separate acceptance gate.

Each physical LIT location appears **once** here, regardless of how many entrypoints reach it. A following `DUP` or `B@` is not equivalent to a write. Addresses are observed, not original variable names.

## Entrypoint reachability

| Entry | Reachable TERSE token cells |
| --- | ---: |
| $BA31 | 140 |
| $BACD | 143 |
| $BAD9 | 137 |
| $BAED | 127 |
| $BB27 | 146 |
| $BB68 | 139 |
| $BBE8 | 92 |
| $BC83 | 37 |
| $BC8F | 31 |

## Physical accesses to the shared RAM fields

| LIT cell | RAM field | Following primitive | Classification | Reachable from |
| --- | --- | --- | --- | --- |
| $BA38 | $F71A | `! (word store)` | direct | $BA31 |
| $BA40 | $F71C | `! (word store)` | direct | $BA31 |
| $BA51 | $F6EB | `BZERO (byte zero)` | direct | $BA31 |
| $BA5B | $F718 | `! (word store)` | direct | $BA31 |
| $BA63 | $F716 | `! (word store)` | direct | $BA31 |
| $BA85 | $F716 | `@ (word fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA91 | $F71A | `@ (word fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAAA | $F71C | `@ (word fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BABF | $F718 | `@ (word fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAC5 | $F71C | `@ (word fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAD3 | $F716 | `@ (word fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAE1 | $F6EB | `DUP (address duplication)` | not a direct access | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAFF | $F71C | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB14 | $F718 | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB1E | $F6EB | `B@ (byte fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB37 | $F71A | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB4B | $F718 | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB55 | $F716 | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB5F | $F6EB | `B@ (byte fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB78 | $F71C | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB8C | $F718 | `! (word store)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB92 | $F6EB | `B@ (byte fetch)` | direct | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BBFA | $F71C | `! (word store)` | direct | $BBE8 |
| $BC0E | $F718 | `! (word store)` | direct | $BBE8 |
| $BC18 | $F716 | `! (word store)` | direct | $BBE8 |
| $BC43 | $F716 | `@ (word fetch)` | direct | $BBE8 |
| $BC4F | $F71C | `@ (word fetch)` | direct | $BBE8 |
| $BC68 | $F71C | `@ (word fetch)` | direct | $BBE8 |
| $BC7D | $F718 | `@ (word fetch)` | direct | $BBE8 |
| $BC89 | $F716 | `@ (word fetch)` | direct | $BBE8 |
| $BC9B | $F718 | `! (word store)` | direct | $BBE8 |
| $BCA4 | $F716 | `! (word store)` | direct | $BBE8, $BC83, $BC8F |
| $BCAC | $F71C | `! (word store)` | direct | $BBE8, $BC83, $BC8F |

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
- The six-entry feedback family shares the read/transfer region `$BA79–$BBA6`; its five alternate entrypoints are not independent copies of that region.
- `$BAE1` loads the address `$F6EB` and executes `DUP`. That instruction is **not** an observed memory write; a later consumer must be followed to establish the use.
- The `$BBE8` application family sets several quartet fields before entering shared readers and writers. Its `$BC83/$BC8F` entrypoints share the closing tail.
- The stream invokes object-record and graphics-related tokens (`$1D24`, `$1D3C`, `$1D54`, `$1E8E`, `$2083`) in addition to memory primitives. These tokens establish application state flowing into object/render state, not an independently proven score or difficulty-field identity.
- The `CORRECT_FEEDBACK_TASK` uses `OUTP` (`$BBC2`) and invokes `$BA31` at `$BBCE`. The `MAIN_APPLICATION` invokes `$BBE8` at `$BEE2`. The call edges refer to actual physical token cells.
- Full stack effects of the compound words require resolution of external object/task words, whose effects can be conditional. Do not invent them from a direct RAM-store count.

## Verification

Run `node tools/analyze_shared_threads.js --state-audit --check-sources` and `node tools/analyze_shared_threads.js --state-check --check-sources` against `roms/orig/profpac.zip`, then `./build.sh --clean` for the original-ROM byte comparison. This trace is statically derived from the repository's addressed source and is **not** a claim that those local commands were executed.

For the complete 334-cell, bank-aware shared execution-token map, see [Stage 5 token map](STAGE5-TOKEN-MAP.md). Regenerate it using `node tools/analyze_shared_threads.js --token-map --check-sources` against the original ROM.
