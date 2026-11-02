# Stage 4 — Shared game-state TERSE recovery

Date: 2026-11-01 | Target: configuration-1 PPS8 ROM.

## Goals

Recover the physical control-flow relationships of shared game-state threads without duplicating ROM bytes; identify the observed RAM reads/writes; resolve callers and improve their symbolic labels; maintain a traceable TERSE application dictionary. Preserve all byte-exact original ROM build comparisons.

## Recovered game-state family

| Entry | Reachable range | TERSE cells | Source label |
| --- | --- | ---: | --- |
| $BA31 | $BA31–$BBA6 | 140 | GAME_STATE_WORD_TRANSFER_BA31 |
| $BACD | $BA79–$BBA6 | 143 | GAME_STATE_SHARED_ENTRY_BACD |
| $BAD9 | $BA79–$BBA6 | 137 | GAME_STATE_SHARED_ENTRY_BAD9 |
| $BAED | $BA79–$BBA6 | 127 | GAME_STATE_SHARED_ENTRY_BAED |
| $BB27 | $BA79–$BBA6 | 146 | GAME_STATE_SHARED_ENTRY_BB27 |
| $BB68 | $BA79–$BBA6 | 139 | GAME_STATE_SHARED_ENTRY_BB68 |

These non-leading entrypoints branch backward into code beginning at $BA79. The different entries share physical instruction bytes, so they cannot be expanded as independent consecutive definitions.

The direct caller of $BA31 is the colon definition at $BBB8, which embeds the literal text "correct" and uses state address $F758. Its execution cell at $BBCE invokes $BA31. This source word is now CORRECT_FEEDBACK_TASK, with a documented call edge.

## Observed application memory

| Observational constant | Address | Access pattern |
| --- | --- | --- |
| GAME_STATE_WORD_0_ADDR | $F716 | 16-bit reads and writes |
| GAME_STATE_WORD_1_ADDR | $F718 | 16-bit reads and writes |
| GAME_STATE_WORD_2_ADDR | $F71A | 16-bit reads and writes |
| GAME_STATE_WORD_3_ADDR | $F71C | 16-bit reads and writes |
| GAME_STATE_FLAG_F6EB_ADDR | $F6EB | Byte read and zeroing, plus indirect uses |

The derived memory table uses actual inline LIT values followed by known memory primitives. Literals without an immediately proven memory operation remain classified as address-literals. These names are not claimed to be original game variable spellings or final gameplay semantics.

## Application continuation family

| Entry | Reachable span | TERSE cells | Source label |
| --- | --- | ---: | --- |
| $BBE8 | $BBE8–$BCDA | 92 | GAME_STATE_APPLICATION_INIT_BBE8 |
| $BC83 | $BC83–$BCDA | 37 | GAME_STATE_CONTINUATION_BC83 |
| $BC8F | $BC8F–$BCDA | 31 | GAME_STATE_CONTINUATION_BC8F |

The fixed caller at $BEE2 in MAIN_APPLICATION ($BE66) executes the $BBE8 word. This family shares the word addresses $F716, $F718, and $F71C, then converges before MAIN_PROGRESSION_TASK ($BCDB). The continuation entries share executable tails; these are not separate copies.

## Implementation

- src/pps8.asm: nine shared-entry symbols renamed conservatively with function headers and proven caller annotations. The $BBB8 correct-feedback thread was named from its embedded text and call edge.
- src/profpac_common.include: five observed state-address constants added with explicit provenance comments.
- tools/analyze_shared_threads.js: added --state option to recover memory access operations, entrypoint reachability, and direct inter-entry calls from original ROM contents. Existing --check-sources and --markdown options remain supported.
- docs/terse_vocabulary.md and docs/game_progression.md: extended with the observed dictionary and context.

Example invocation: node tools/analyze_shared_threads.js --state --check-sources

## Validation and remaining work

A synthetic archive/source test using original address-annotated bytes exercised the analyzer and recovered all nine entries with the state-word quartet. The synthetic test mocked SHA-1 return values; it is not a substitute for a full real-archive validation. No new interpreter or ROM bytes were authored; assembly changes are labels/comments.

Run ./build.sh --clean and node tools/analyze_shared_threads.js --state --check-sources locally. Acceptance requires all 23 byte-exact ROMs, the exact MAME ZIP and all existing analyzers passing.

Next: follow every writer/reader of $F716–$F71C through the application lifecycle, identify concrete gameplay meaning, and derive input/output stack effects from each word's actual consumers. Continue sound and graphics descriptions from observed hardware calls.
