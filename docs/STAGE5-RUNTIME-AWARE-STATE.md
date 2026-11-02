# Stage 5 — original-runtime-aware game-state RE

Date: 2026-11-02. ROM context: **configuration 1, PPS8**. This stage extends the existing Stage 4 physical-entry analysis; it does not change the target interpreter or any ROM bytes.

## Goals

1. Track the physical instruction cells that load the RAM quartet `$F716`, `$F718`, `$F71A`, `$F71C` and flag byte `$F6EB`.
2. Distinguish proved direct fetch/store operations from literals used in another way. Do not count overlapping entrypoint traversals as independent physical writes.
3. Preserve the application call boundaries `$BBCE -> $BA31` and `$BEE2 -> $BBE8`.
4. Align game-word annotations with the extracted **original** target runtime and bank-aware dictionary inventory.
5. Improve the README with a dedicated work-RAM submap, without confusing it with the CPU-wide ROM/bank map.

## Runtime/library baseline: WB #38 and ICEBOX #104

- [WB runtime extraction PR #38](https://github.com/lizard43/dnaTERSE-WB/pull/38): `runtime/components/profpac-1983-v20261101-0001/`.
- [ICEBOX registration PR #104](https://github.com/lizard43/dnaIceBox/pull/104): `terse/runtime/profpac-direct-threaded/`.
- Both PRs pin **the same extracted original** `pps1.bin`, SHA-1 `f7a9606ce6d66c3e6d210cc25572904aeab2b6c8`.
- ABI: colon `$0008`, NEXT `$00F6`, root `$00FD–$05B7`, BC threaded IP, IX control stack, SP parameter stack, IY continuation; little-endian fixed 16-bit execution addresses.
- Dictionary layers: **100 root** words; **46 platform** aliases; **442 game** colon entries (ROM/configuration namespaces); **130 question initializers** and **201 tier references** across 14 banks.
- These inventories are **address and provenance baselines**, not completed semantic definitions of all game words. The host interpreter and XC are independent; neither PR establishes a working Professor Pac-Man compiler binding.

**Compatibility rule:** future dictionary-semantic revisions may add justified names, stack effects, cross references and RAM field descriptions. Do not overwrite the pinned v20261101-0001 extracted component, silently merge same-address names from different bank contexts, rebind an XC, or change older host interpreter bytes.

## Physical RAM fields

| Address | Width | Evidence | Conservative meaning |
| --- | --- | --- | --- |
| `$F6EB` | byte | LIT followed by byte-oriented operations in shared threads | Shared state flag/counter |
| `$F716–$F717` | word | LIT `$F716` paired with word operations | Shared word state 0 |
| `$F718–$F719` | word | LIT `$F718` paired with word operations | Shared word state 1 |
| `$F71A–$F71B` | word | LIT `$F71A` paired with word operations | Shared word state 2 |
| `$F71C–$F71D` | word | LIT `$F71C` paired with word operations | Shared word state 3 |

Addresses are observed in the original ROM's literal/primitive stream, not guessed from variable names. They reside in the **work RAM `$E800–$FFFF`** part of the CPU map, distinct from persistent `$E000–$E7FF` state.

## Source execution and shared ownership

| Entry | Source word | Relationship |
| --- | --- | --- |
| `$BA31` | `GAME_STATE_WORD_TRANSFER_BA31` | Called at `$BBCE` by `CORRECT_FEEDBACK_TASK` (`$BBB8`) |
| `$BACD`, `$BAD9`, `$BAED`, `$BB27`, `$BB68` | `GAME_STATE_SHARED_ENTRY_*` | Alternate entrypoints, with backward branches into common state logic |
| `$BBE8` | `GAME_STATE_APPLICATION_INIT_BBE8` | Called at `$BEE2` by `MAIN_APPLICATION` (`$BE66`) |
| `$BC83`, `$BC8F` | `GAME_STATE_CONTINUATION_*` | Shared continuation with `$BBE8`, converging before `$BCDB` |

The first family is reached through correct-answer feedback; the second through normal application initialization. This proves **caller relationships**, not yet a definitive gameplay role or full stack contract for the shared state words. The shared entries are overlapping physical byte paths, **not nine separately allocated ROM routines**.

See [the Stage 5 RAM diagram](../images/professor-pacman-game-state-map.svg), [Stage 4](STAGE4-SHARED-GAME-STATE.md) and [main progression](game_progression.md).

## Reproducible Stage 5 inspection

```sh
node tools/analyze_shared_threads.js --state-detail --check-sources
node tools/analyze_shared_threads.js --state-check --check-sources
./build.sh --clean
```

The new `--state-detail` prints a row for each physical LIT cell of an observed RAM address, its reachability entry, and the immediate next execution token. `--state-check` additionally asserts two fixed-ROM caller tokens, all nine registered entrypoints and a directly observed memory primitive for each quartet address. The analyzer reads the **original archive** and retains the existing PPS8/PPS9 SHA-1 and source-entry checks. Repeated physical cells may appear under multiple entrypoints; the report explicitly preserves that distinction.

**Acceptance boundary:** original 23 ROM SHA-1 matches, per-ROM byte equality, exact canonical MAME ZIP, and all existing source/PPQ checks must pass on a local checkout. No post-change full build or real-original-ZIP analyzer run has been performed by the GitHub connector.

## Next semantic pass

Trace consumers of the values written to the quartet and determine how the correct-feedback path affects those fields versus initial setup. Where the downstream use proves a concrete purpose, add the semantic name, input/output stack effect and physical caller/callee link to the **game dictionary** with configuration `1` and ROM `pps8`. Cross-reference the original WB/ICEBOX v20261101-0001 identity without changing its frozen extraction.
