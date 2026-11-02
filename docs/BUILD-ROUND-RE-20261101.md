# Professor Pac-Man — reproducible build, question-round recovery, and source hygiene

**Date:** 2026-11-01  
**Scope:** Fix post-assembly analysis validation, streamline build console output on Linux and Windows, and remove generated-file noise from VS Code.

## User build baseline

The reported `./build.sh` execution successfully assembled and verified all **23 ROMs** (9 PPS program + 14 PPQ question) with the original SHA-1 values and produced an identical complete MAME `profpac.zip` (SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c`). The PPQ question-family and graphics analyzers also passed. The next failure was:

```text
ValueError: src/pps3.asm:$928D is not structured
```

The failure was in the question-round analyzer's source-structure check, **not the assembler, ROM hashes, or ZIP construction**.

## RE and structural source recovery

The round checker traverses a fixed-ROM/configuration-0 and configuration-1 scheduler graph. The source audit identified **61** reachable definitions whose entrypoints were still inside raw byte blocks. All 61 are now explicitly represented in `pps3`, `pps4`, `pps8` and `pps9`:

| Program ROM | Fully decoded reachable colon words |
| --- | ---: |
| `pps3.asm` | 20 |
| `pps4.asm` | 6 |
| `pps8.asm` | 5 |
| `pps9.asm` | 30 |
| **Total** | **61** |

The expansion uses `RST $08`, symbolic execution tokens where known, literal/byte operands, counted-string and CASES material where applicable, and explicit branch-target labels. A special packed control-flow region beginning at `pps9:$CFE2` is annotated without duplicating the shared byte `$D020`: the byte `$CF` is both the colon-entry opcode there and the high byte of the preceding conditional branch operand.

A further **19** colon entry opcodes have been separated from raw data as named `RST $08` entries (18 in `pps8`, one in `pps9`). These include deliberately shared/overlapping TERSE thread bodies; their remaining data deserves a dedicated RE pass instead of generating duplicate bytes. In other words, these entrypoints are correctly identified and the byte layout is preserved, but those shared bodies are **not claimed to be fully symbolically decoded**.

The 17 question-round action lists in `pps4`/`pps9` and four additional configuration-1 action lists in `pps8` have been promoted into named count bytes and action-word pointers, with their original membership intact. The application entrypoint and retained-score/initials words are named consistently with the game-progression analyzer.

### Byte-preserving validation

A source-level byte map was reconstructed from the original `main` source and the modified sources using address annotations, `DB`, `DW`, `RST`, local labels and shared equates. Result:

| ROM | Verified encoded source bytes | Changed | Missing |
| --- | ---: | ---: | ---: |
| PPS3 | 8,192 | 0 | 0 |
| PPS4 | 8,192 | 0 | 0 |
| PPS8 | 8,143 | 0 | 0 |
| PPS9 | 8,157 | 0 | 0 |

The latter two counts describe the source bytes directly represented by these directives; native instruction bytes outside those directives were already preserved and were not modified in this PR. No duplicate emitted addresses or undefined symbolic arguments were found.

**Important acceptance boundary:** The full `./build.sh` pipeline has **not yet been rerun** against the new PR branch. Run it to verify the zmac output and all analyzer checks against the rebuilt ROM image.

## Compact build console

`build.sh` now prints a compact summary instead of 23 repeated SHA-1 pairs, 23 SHA-1 inventory lines and dozens of listing-file records. Success output follows these phases:

```text
Professor Pac-Man — reproducible ROM build
Baseline: OK (...)
Assembler: tools/zmac | outputs: roms/ and build/
Program ROMs (9): 9/9 byte-exact
Question ROMs (14): 14/14 byte-exact
Packaging original MAME set...
MAME ZIP: byte-exact
Analysis checks:
  Question families:   ... OK
  PPQ graphics:        ... OK
  Question round:      ... OK
  Game progression:    ... OK
  PLD:                 OK
SUCCESS: 23 ROMs and MAME ZIP match original (...)
```

A failed ROM reports its **name and expected/actual hashes**. Analyzer output and Python tracebacks are captured under `build/analysis_*.log`; failures report the failing phase, log path and trailing diagnostic lines. No verification stages have been removed.

| Command | Behavior |
| --- | --- |
| `./build.sh` | Default concise build |
| `./build.sh --verbose` | Full per-ROM hashes and listings |
| `./build.sh --clean` | Remove stale source-tree binary/listing files and `tools/__pycache__` before building |
| `build.bat` | Windows entry via Git Bash and bundled `tools/zmac.exe` |
| `build.bat --verbose` | Windows detailed build |
| `build.bat --clean` | Windows cleanup followed by build |

The Windows entrypoint uses Git for Windows/Git Bash and Python 3 rather than maintaining a divergent duplicate build implementation. Its command sequence, zmac output directories, ZIP packaging and verification are the same as on Linux.

## Source-control hygiene

The tracked analyzer code is under `tools/`. There are **no tracked root-level Python analyzers**.

The repo's ignore rules now cover `roms/ppq*`, `roms/pps*`, `__pycache__/`, `*.py[cod]` and default zmac artifacts in `src/`. Files already generated in a local checkout may remain on disk; `--clean` explicitly removes the known old source-tree artifacts and Python cache. Ignore rules prevent future source-control noise without deleting user-owned source.

## Next RE work

1. Complete the overlapping/shared TERSE bodies in PPS8 as a unified control-flow graph. Avoid duplicating bytes at multi-entry regions.
2. Extend precise game-purpose labels and stack effects for the 61 expanded round words and 19 shared entrypoints.
3. Trace the initial-entry scheduler, attract/demo/credit pathways, and high-score editing with native callers and screen/sound state.
4. Continue graphics/table inline commentary, keeping all original pixel bytes.
5. Re-run the full zmac + analyzer suite after merging or checkout of this PR; use the per-ROM and archive hash checks as the final acceptance criteria.

No GitHub Actions or ROM binaries were added.
