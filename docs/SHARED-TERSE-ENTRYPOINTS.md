# Professor Pac-Man — multi-entry TERSE recovery, stage 3

**Date:** November 1, 2026  
**Target:** Original program ROM configuration 1, principally `pps8.asm` and `pps9.asm`  
**Constraint:** Original ROM bytes and bank addresses are authoritative. The game must continue assembling byte-for-byte against `roms/orig/profpac.zip`.

## Result

The previously identified configuration-1 shared/overlapping TERSE entries were investigated as executable threads, rather than treated as arbitrary $CF-marked byte data. The recovered structure has two different classes:

- **Six independent TERSE words**, now fully represented as `RST $08`, execution tokens, inline operands and named branch targets in `src/pps8.asm`. These account for **613 bytes**, formerly represented in raw `DB` blocks.
- **Thirteen additional entry points** (12 in PPS8, one in PPS9) that include overlapping or shared threads. Their addresses and entry opcodes are retained; the common byte ranges are *not* copied into separate word bodies.

A synthetic ZIP/source test using the original address-annotated ROM bytes returned:
**19 entrypoints, 18 decoded control-flow graphs, one entry-only marker,
and 12 entries sharing physical bytes**, with all source markers present.
The fixture used mocked SHA-1 values; execution against the actual
`roms/orig/profpac.zip` remains the acceptance test for the archive
checksum and compression path.

The original-ROM inventory is implemented in [`tools/analyze_shared_threads.js`](../tools/analyze_shared_threads.js). It uses only Node.js built-ins, reads the original MAME ZIP, verifies the SHA-1 of both program ROMs, decodes the TERSE instruction/branch cells, and identifies code bytes shared between entrypoints.

```sh
node tools/analyze_shared_threads.js --check-sources
node tools/analyze_shared_threads.js --markdown
```

The first checks that every registered entrypoint has a corresponding source `RST $08` marker; the second prints a Markdown table of decoded entry ranges, cell counts, and actual shared physical bytes. It does not rewrite ROM sources.

## Recovered action words and caller paths

| ROM address | Source name | Cells | Bytes | Scheduler reference |
| --- | --- | ---: | ---: | --- |
| `$AFF1` | `ATTRACT_SCREEN_ACTION_ENTRY` | 113 | 293 | `ATTRACT_SCREEN_ACTIONS` at `$B4F2` |
| `$B4C5` | `ATTRACT_DEMO_THIRD_ACTION` | 17 | 45 | Third entry of `ATTRACT_DEMO_QUESTION_ACTIONS` at `$B4F5` |
| `$B613` | `ATTRACT_PROMPT_STAGE_ENTRY` | 15 | 40 | First entry of `ATTRACT_CHALLENGE_PROMPT_ACTIONS` at `$B6C2` |
| `$B642` | `ATTRACT_PROMPT_SECOND_ACTION` | 23 | 61 | Second entry of `ATTRACT_CHALLENGE_PROMPT_ACTIONS` |
| `$B67F` | `ATTRACT_PROMPT_THIRD_ACTION` | 25 | 67 | Third entry of `ATTRACT_CHALLENGE_PROMPT_ACTIONS` |
| `$B846` | `CREDIT_PROMPT_STAGE_ENTRY` | 37 | 107 | Sole entry of `CREDIT_START_PROMPT_ACTIONS` at `$B8B1` |

The source uses named branch targets for control transfers within these words. The six decoded words were independently compared by emission address against the pre-change source: **all 8,143 address-annotated bytes in PPS8 matched**, with no missing or changed bytes.

### Shared-entry family 1: attract demonstration

| Entry | Decoded thread coverage | Relationship |
| --- | --- | --- |
| `$B41C` `ATTRACT_DEMO_STAGE_ENTRY` | `$B41C–$B498` | First action in `$B4F5`; shares code with `$B465` |
| `$B465` `ATTRACT_DEMO_SHARED_CONTINUATION` | `$B465–$B4C4` | Overlaps both preceding and second-action paths |
| `$B499` `ATTRACT_DEMO_SECOND_ACTION` | `$B499–$B4C4` | Second action in `$B4F5`; shares the continuation tail |
| `$B4C5` `ATTRACT_DEMO_THIRD_ACTION` | `$B4C5–$B4F1` | Independent, now fully decoded |

This is a concrete case where **one physical byte region participates in more than one TERSE entry path**. A one-label-per-word source rewrite cannot safely represent the overlapping part without tracking shared instruction ownership. It must preserve the original layout.

### Shared-entry family 2: game-state threads

The six entries at `$BA31`, `$BACD`, `$BAD9`, `$BAED`, `$BB27`, and `$BB68` share execution through the region ending at `$BBA7`. Their decoded code repeatedly accesses RAM addresses `$F716`, `$F718`, `$F71A`, `$F71C`, and `$F6EB`.

| Entry | Reached end | Decoded cells |
| --- | --- | ---: |
| `$BA31` | `$BBA7` | 140 |
| `$BACD` | `$BBA7` | 143 |
| `$BAD9` | `$BBA7` | 137 |
| `$BAED` | `$BBA7` | 127 |
| `$BB27` | `$BBA7` | 146 |
| `$BB68` | `$BBA7` | 139 |

These are documented as **shared game-state paths**, based on the common memory references and decoded branches. Specific higher-level names will be assigned after following their application callers; no unsupported game-play names have been invented.

### Shared-entry family 3: application continuation

| Entry | Reached end | Decoded cells |
| --- | --- | ---: |
| `$BBE8` | `$BCDB` | 92 |
| `$BC83` | `$BCDB` | 37 |
| `$BC8F` | `$BCDB` | 31 |

These three words converge into the same application continuation region before `MAIN_PROGRESSION_TASK` begins at `$BCDB`.

The remaining PPS9 entry `$D426` is recorded as an **entry-only precursor** to coin/credit control, because its traversal reaches the already defined `$D430` region. The standalone analyzer verifies its location and original opcode without claiming a separate fully decoded body.

## Build hash verification and reporting

**All hash comparisons remain active.** Neither the individual ROM SHA-1 checks, original-ROM byte comparison, complete MAME ZIP byte comparison, nor the final ZIP SHA-1 check has been deleted.

Default `build.sh`/ `build.bat` output is intentionally concise:

```text
Program ROMs (9): 9/9 byte-exact
Question ROMs (14): 14/14 byte-exact
MAME ZIP: byte-exact
...
SUCCESS: 23 ROMs and MAME ZIP match original
```

On a failed hash, the console prints the ROM or package name, **expected SHA-1**, and **actual built SHA-1**. `--verbose` prints *both hashes for every successful ROM and the package*. Byte-level comparisons are still performed separately, with their own explicit error message. The SHA-1 expectation is not relaxed to permit differing binaries.

## Next-stage investigation

1. Convert the three overlapping families into shared *physical* instruction maps with distinct entrypoint labels, allowing named branches without duplicating bytes.
2. Trace their callers from `MAIN_PROGRESSION_TASK`, attract/demo task roots and game-state memory blocks to establish stack effects and stronger functional names.
3. Build an address-linked application dictionary with per-word name, entry, bank, stack effects, callers, implementation and decoded control-flow role.
4. Continue inline graphics and sound state documentation by following the actual renderer and audio writes.
5. Run both `./build.sh --clean` and `node tools/analyze_shared_threads.js --check-sources` as acceptance tests. The new RE code has been checked using source-level byte comparisons; full post-PR zmac execution remains for the local environment.

No interpreter, original ROM archive, build baseline or hardware mapping has been changed.
