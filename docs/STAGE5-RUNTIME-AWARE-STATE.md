# Stage 5 — PPS8 shared-state reverse engineering

Date: 2026-11-02. Source: Professor Pac-Man configuration-1 `pps8` program ROM.

## Scope and implementation

Stage 5 moves the nine overlapping entrypoints beyond address-only labels. The byte-addressed PPS8 source now expresses **184 physical TERSE instruction cells as named `dw` tokens** in place of raw `db` data, across `$BA31–$BBA6` and `$BBE8–$BCDA`. The remaining boundary bytes stay as explicit `db` because interpreting them as a single linear token stream conflicts with another entrypoint or requires more evidence. A static source-byte reconstruction compared every byte in those converted ranges with the prior source and found **zero differences**.

The native execution model is the separately extracted Professor Pac-Man direct-16 runtime: colon entry `$0008`, NEXT `$00F6`, 100 native-root dictionary entries. No host TERSE interpreter or XC is changed.

## Entry graphs and state behavior

The feedback family is `$BA31, $BACD, $BAD9, $BAED, $BB27, $BB68`; they share their central instruction stream, including the word-read/transfer paths starting at `$BA79`. `CORRECT_FEEDBACK_TASK` at `$BBB8` executes `$BA31` through cell `$BBCE`. The application family is `$BBE8, $BC83, $BC8F`; `MAIN_APPLICATION` at `$BE66` calls `$BBE8` through `$BEE2`. These are verified address-bearing cells in the source.

The four adjacent work-RAM words are `$F716, $F718, $F71A, $F71C`. The shared byte `$F6EB` is read or reset as part of the feedback family. In particular, `$BAE1` is **LIT $F6EB; DUP**, not a direct read or write; the value's later consumer must be tracked separately. All five addresses occur within work RAM `$E800–$FFFF`, not the battery-backed `$E000–$E7FF` region.

The original addressed source yields **334 distinct reachable physical TERSE token addresses** over the nine separately traversed entry graphs. Deduplication produces **33 distinct literal cells** referencing the five watched RAM addresses: `$F6EB` 5, `$F716` 8, `$F718` 8, `$F71A` 3, `$F71C` 9. The direct fetch/store operations and shared reachability for every physical cell are in [the Stage 5 physical trace](STAGE5-PHYSICAL-TRACE.md). Do not multiply an operation merely because six alternative entrypoints share it.

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

## Object, display, and output effects

The feedback sequence calls `OUTP` at `$BBC2` before calling the shared transfer routine, confirming a hardware output in the correct-feedback path. The shared threads call object-state setters `$1D24` (value 1), `$1D3C` (value 2), `$1D54` (value pair), object field updater `$1E8E`, and render/graphics-associated vocabulary such as `$2083`. These establish an observable path from state setup/transfer into the existing object presentation system. They do not by themselves prove an exact gameplay label such as score, difficulty, or current question.

## Stack-contract boundary

The native root dictionary supplies known primitive effects (`LIT`, `@`, `!`, `B@`, `BZERO`, `DUP`, etc.). The nine **compound** entries also invoke task and object words, some outside the selected physical bank. Consequently their complete input/output stack effects cannot be established simply by summing the root primitives. Their library `stackEffect` is retained as `null` rather than fabricated. The call edges and physical state access metadata have been committed to the *primary* game dictionary.

## Single current WB / ICEBOX runtime

WB [PR #38](https://github.com/lizard43/dnaTERSE-WB/pull/38) maintains only `runtime/components/profpac-current/`; ICEBOX [PR #104](https://github.com/lizard43/dnaIceBox/pull/104) maintains only `terse/runtime/profpac-direct-threaded/`. Both carry **v20261102-0002** and the same current compatibility ID `z80-direct16-profpac-v20261102-0002-pps1-f7a9606ce6d66c3e6d210cc25572904aeab2b6c8`. Older package revisions and the redundant Stage 5 overlay were removed; there is one editable working baseline, not a frozen copy for each stage.

The unchanged original PPS1 SHA-1 identifies the original ROM image as *provenance*, not a pinned software revision. Dictionary records remain bank-aware: 100 native root words, 46 platform aliases, 442 program words, and 130 question initializer words.

## Reproduction and remaining acceptance checks

```sh
node tools/analyze_shared_threads.js --state-audit --check-sources
node tools/analyze_shared_threads.js --state-check --check-sources
./build.sh --clean
```

The source conversion was checked against the preceding `pps8.asm` byte declarations (zero differences for all converted ranges). Original-ROM analyzer execution, zmac assembly, all 23 ROM SHA-1 comparisons, and the ZIP byte-for-byte rebuild **have not been executed through this GitHub-only environment**. These remain required before merge; neither the source conversion nor its dictionary synchronization is claimed to have passed a full local build.

