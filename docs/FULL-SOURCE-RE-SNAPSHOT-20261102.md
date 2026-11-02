# Professor Pac-Man — full-source RE snapshot and completion plan

**Snapshot date:** 2026-11-02  
**Repository:** `lizard43/profpac`  
**Source reference:** `main` as inspected 2026-11-02, with build-output-only changes on `fix/quiet-build-output-20261102`  
**Original ROM archive:** `roms/orig/profpac.zip`, SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c`  
**Scope:** Nine 8 KiB program ROMs (PPS1–9), fourteen 16 KiB question ROMs (PPQ1–14), original MAME ZIP packaging, source/analyzer assets.  
**Purpose:** Freeze an honest description of RE/source readability at this point and define work required to complete a readable, fully classified, byte-exact assembly reconstruction. This is a documentation/acceptance snapshot, not a declaration that all source is already resolved.

## 1. State at snapshot

The existing sources reconstruct the Z80 interpreter/runtime, substantial native hardware and graphics routines, TERSE execution tokens and threaded applications, question controller/progression, question graphics, shared state and scheduler behavior. The repo's current build checks SHA-1 and byte identity for 9 PPS and 14 PPQ outputs and byte identity of the regenerated MAME ZIP. User-supplied `./build.sh` output on 2026-11-02 reports all those checks and analyzers passing.

**Important:** Byte-exact assembly is *not* proof of complete reverse engineering. All 23 ASM files still contain many unstructured `DB` lines. A `DB` can represent appropriate graphics/table/string/operand/fill data, or an as-yet-unclassified byte region; the directive by itself does not establish that code remains undecoded. Full semantic coverage and consistently readable presentation have not been established.

Native-code mapping in `docs/native_code.md` reports PPS3, PPS4 and PPS7 have zero native Z80 routine bytes; these ROMs nevertheless contain TERSE and data. No requirement to turn legitimate data into false Z80 mnemonics.

### Source inventory (literal DB directive count)

Counts obtained by scanning all 23 `src/pps*.asm` and `src/ppq*.asm` files on 2026-11-02. They count source directives, **not** unresolved bytes/regions or byte volume.

| ROM | DB lines | ROM | DB lines |
| --- | ---: | --- | ---: |
| PPS1 | 168 | PPQ1 | 1,177 |
| PPS2 | 448 | PPQ2 | 1,275 |
| PPS3 | 503 | PPQ3 | 1,075 |
| PPS4 | 509 | PPQ4 | 1,112 |
| PPS5 | 392 | PPQ5 | 1,294 |
| PPS6 | 444 | PPQ6 | 1,387 |
| PPS7 | 512 | PPQ7 | 1,243 |
| PPS8 | 447 | PPQ8 | 1,176 |
| PPS9 | 392 | PPQ9 | 1,370 |
| | | PPQ10 | 1,237 |
| | | PPQ11 | 1,206 |
| | | PPQ12 | 1,128 |
| | | PPQ13 | 1,099 |
| | | PPQ14 | 1,265 |
| **PPS total** | **3,815** | **PPQ total** | **17,044** |

**Grand total: 20,859 `DB` directives.** This is a readability/backlog indicator only. It must not be treated as 20,859 incomplete-code lines.

### Concrete source-quality examples

- `src/pps4.asm`: 509 DB lines in 771 total lines; starts with long addressed hexadecimal blocks at `$A000`, while reachable TERSE near `$BD98`–`$BFFF` has meaningful `XT_*` tokens and branch labels. Finish classification and semantic graphics/table labels without disturbing the already decoded TERSE.
- `src/pps7.asm`: 512 DB lines in 522 total lines and no obvious human-readable section/asset labels in the inspected head. `docs/native_code.md` lists zero native Z80 bytes. Prioritize graphics/data structure reconstruction rather than treating the whole ROM as machine code.
- `src/pps1.asm`: mostly native routines reconstructed, but retains DB byte runs; inspect these to separate genuine data/inline bytes from possible code.
- `src/ppq2.asm`: DB directives already describe graphics rows with textual pixel annotations in places. Extend this structured approach consistently across all question modules; avoid gratuitous replacement of legitimate pixel data.

### Established work products to preserve

- Native Z80 code map and documented bank/hardware behavior (`docs/native_code.md`).
- Existing TERSE word, branch, entrypoint, dictionary and question progression analyses.
- Stage 5 original-ROM signature verification, RAM/I/O/scheduler audit and task-body stack-contract checks (`tools/verify_stage5_rom.js`, `tools/audit_stage5_full.js`, `tools/audit_stage5_stack.js`).
- Program/question family, graphics, question round, progression and PLD analyzers already wired into `build.sh`.
- All original ROM, ZIP and per-member hash comparisons. Continue using *one* active runtime baseline; do not create duplicate historical runtime packages during RE.

## 2. Completion work plan

### Pass A — Exhaustive address/byte classification (all 23 ROMs)

1. Produce a ROM coverage ledger with an address interval for **every byte**: `native-z80`, `terse-thread`, `terse-inline`, `graphics`, `text`, `table/pointers`, `padding/fill`, or `unresolved`.
2. Link each interval to its source labels and consumer/caller where identifiable; document bank configuration and CPU mapping.
3. Report coverage and unresolved intervals per ROM, never just global DB totals. Handle overlapping TERSE entries without duplicating physical bytes.
4. Verify the intervals span each complete 8 KiB PPS and 16 KiB PPQ ROM without overlap or gaps (except explicitly modeled aliases/overlapping semantic views).

**Deliverable:** `docs/ROM-RE-COVERAGE.md` plus reproducible coverage tooling/report output.

### Pass B — Complete executable RE

1. Inspect all `unresolved` or code-suspect intervals in PPS and PPQ using control-flow, entrypoint/word tables, runtime token semantics and caller references.
2. Recover true Z80 instructions and TERSE execution tokens/branch operands, with correct entry and exit semantics. Do not disassemble graphics as code.
3. Use descriptive function names, documented parameters/register effects/stack contracts, caller and callee relationships, hardware dependencies and meaningful inline comments.
4. Keep inline operands and overlapping physical bytes byte-exact; treat ownership and labels explicitly instead of hiding executable sequences in DB dumps.

**Deliverable:** improved `src/*.asm` and cross-reference documentation, with unresolved intervals counted explicitly.

### Pass C — Recover graphics, tables, strings and padding

1. Start PPS4 and PPS7; identify asset records, headers, dimensions, packing, pointer references, expected screens/consumers and section boundaries.
2. Then PPS3/PPS8/PPS9; finally audit residual native-data mixture in PPS1/PPS2/PPS5/PPS6.
3. Reconcile all PPQ1–14 images, question presentations, table/list metadata, strings and byte ranges with existing question analyzers.
4. Keep DB for genuine data, but replace anonymous dump-style blocks with labeled records, bounded sections, purpose and format comments; provide useful inline pixel/graphics representations where applicable.
5. Describe fill and padding as fill, not executable logic. Preserve all bytes.

**Deliverable:** fully identified structured data sections, readable ASM and an asset/consumer inventory.

### Pass D — Source consistency, naming, documentation

1. Apply one convention for native routines, TERSE colon words, shared/overlap entrypoints, graphics records, tables and inline byte operands.
2. Replace generic labels when behavior is established; do not invent semantics to make an unknown label look descriptive.
3. Ensure readable routine headers, semantic data labels, useful comments and bank-aware cross-references; avoid redundant noise.
4. Update README/dictionaries/architecture docs to reflect *actually completed* source reconstruction.

**Deliverable:** consistent maintainable source across 23 ROMs.

### Pass E — Rebuild and acceptance

1. Run bundled zmac against **all 23** source files; validate each regenerated ROM SHA-1 and byte-for-byte equivalence to the original.
2. Regenerate the exact TorrentZIP/MAME set and verify SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c`, plus binary equality.
3. Run all original-ROM, TERSE stack, RAM/I/O/scheduler, question, graphics, progression, PLD and related available WB/ICEBOX regression checks when runtime-facing code changes.
4. Review coverage ledger: 100% accounted physical bytes; no *confirmed executable* code buried in unclassified DB; 100% recognized assets/tables labeled; explicitly list any remaining unresolved intervals as blockers.
5. Publish an acceptance matrix with commands and observed results. Do not mark a test PASS unless actually executed.

**Deliverable:** final coverage matrix and reproducible build/test evidence.

## 3. Suggested execution order

| Priority | ROMs | Work |
| --- | --- | --- |
| 1 | PPS4, PPS7 | Graphics/data bank structure, labels, records and consumer references |
| 2 | PPS3, PPS8, PPS9 | TERSE/data boundaries, branch/entrypoint overlap, structured tables |
| 3 | PPS1, PPS2, PPS5, PPS6 | Remaining Z80/data boundaries, literal runs, native data references |
| 4 | PPQ1–PPQ14 | Graphics, question initializers, strings, metadata and embedded actions |
| 5 | All 23 | Reconcile cross-references, syntax/style, byte-exact builds and ledger |

Revisit priority if a newly discovered code entrypoint changes ownership of a proposed data range.

## 4. Definition of done

- [ ] Every physical ROM byte is assigned to a validated documented classification (full 23-ROM ledger).
- [ ] No confirmed Z80 instructions or TERSE executable tokens remain disguised as unexplained numeric DB dumps.
- [ ] All recognized graphics, text, tables, pointers, inline operands and fill have meaningful bounds, labels and format/purpose notes.
- [ ] Native and TERSE routines have interpretable names, headers and caller/branch relationships where supported by actual evidence.
- [ ] All unresolved regions are investigated to closure and removed from the acceptance blocker list.
- [ ] 9/9 program ROMs and 14/14 question ROMs rebuild byte-identically, with hashes compared against the original.
- [ ] Original MAME ZIP rebuilds byte-identically; all analyzer and applicable runtime suites pass.
- [ ] Documentation/coverage metrics agree with the committed source, with exact test commands/results.

**Non-goals:** forcing legitimate graphics or table bytes into Z80 mnemonics; suppressing DB counts by cosmetic substitutions; adding GitHub Actions; creating parallel Professor Pac-Man runtime versions; changes to hardware/runtime semantics unless independently justified by RE evidence.

## 5. Snapshot limitations

This snapshot is based on reviewing all 23 ASM source files and existing documentation, plus the recorded 2026-11-02 user build output. The counts were directly measured from source; the per-address classification ledger and a complete post-snapshot native build **have not yet been produced/executed**. Neither the DB counts nor the existing source headers prove all code/data boundaries are correct. This document intentionally establishes that follow-up work as an explicit acceptance obligation.
