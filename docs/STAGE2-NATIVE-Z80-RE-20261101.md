# Professor Pac-Man — Stage 2 native Z80 RE and build hygiene

**Branch:** `fix/ppq-missing-symbols-20261101`  
**Date:** 2026-11-01  
**Scope:** Correct PPQ undefined execution-token aliases, prevent assembler outputs in `src/`, and advance native Z80 naming/documentation without changing intended ROM contents.

## PPQ source build failure

The local build verified byte-exact output for all nine PPS ROMs before
`ppq1.asm` failed with undeclared symbols on lines 2234 and 2263.

An inventory of all 14 PPQ sources and their shared includes found **three**
undefined execution-token symbols across **17 references**:

| Symbol | Actual configuration-0 execution address | References |
| --- | --- | ---: |
| `CFG0_XT_CACHE_AND_APPLY_OBJECT_SETUP` | `$8BC4` | 11 |
| `CFG0_XT_REAPPLY_CACHED_OBJECT_SETUP` | `$8BEE` | 3 |
| `CFG0_XT_LOAD_PRESENTATION_TABLE` | `$8CF2` | 3 |

These addresses were already documented in `docs/question_presentation.md`
as `CACHE_AND_APPLY_QUESTION_OBJECT_SETUP`,
`REAPPLY_CACHED_QUESTION_OBJECT_SETUP`, and
`LOAD_PRESENTATION_TABLE`. The missing symbolic aliases were added to
`src/profpac_question_common.include`. No PPQ source tokens were changed.

The analyzer inventory identified no other undefined symbolic `dw` / `db`
arguments among the 14 PPQ sources and their two includes. The complete build
is still needed to confirm this and any additional assembler checks.

## Generated files: build.sh and repository cleanup

The former `build.sh` assembled `src/pps1.asm` directly, letting zmac v1.3
write `src/pps1.bin` and `src/pps1.lst`, which it subsequently moved.
If assembly stopped before those moves, generated files remained under
`src/`. Two such files had been committed to `main`.

The build now invokes zmac v1.3 with explicit destinations:

```sh
"$ZMAC" -o "$ROM_OUTPUT_DIR/$rom_name" \
        -x "$LISTING_OUTPUT_DIR/professor_pacman_$rom_name.lst" \
        "$source_file"
```

The ROM output convention remains `roms/pps1`–`roms/pps9` and
`roms/ppq1`–`roms/ppq14`, with listings in `build/`. Both locations
are prepared by the script; source includes are still resolved from the repo
root. The original per-ROM SHA-1 checks, byte comparisons against
`roms/orig/profpac.zip`, full MAME archive comparison, and analyzer calls
remain unchanged.

The tracked `src/pps1.bin` and `src/pps1.lst` generated files were
removed from the source tree. `.gitignore` now excludes default zmac
`src/*.bin`, `src/*.lst`, `src/*.hex`, `src/*.cmd`, and `zout/`.
Historical copies remain in Git history.

There is **no `build.bat` in this repository**, so no Windows script was
changed.

## Native Z80 RE: PPS1 — persistent game bookkeeping

| Address | New label | Verified code behavior |
| --- | --- | --- |
| `$0673` | `RESET_BOOKKEEPING_CONTROL_BYTES` | Protected writes to E1FF, E1EB, E1FD |
| `$0791` | `ACCUMULATE_NV_SCORE_BUCKET` | Classifies an input value against a threshold and increments the corresponding persistent counter |
| `$07BF` | `UPDATE_PERSISTENT_MAX_SCORE` | Compares score with persistent maximum at E196 and stores if greater |
| `$07CF` | `ACCUMULATE_SCORE_IN_BUCKETS` | Maximum and score histogram update using E198 and $1388 width |
| `$07E7` | `ACCOUNT_ONE_OR_TWO_PLAYER_SCORES` | Processes E1E2 and conditionally E1DE in two-player mode |
| `$07FE` | `ACCOUNT_TIME_IN_90_UNIT_BUCKETS` | Updates E1C0 histogram with $005A stride |
| `$0813` | `ACCOUNT_TIME_IN_180_UNIT_BUCKETS` | Updates E1AC histogram with $00B4 stride |
| `$0828` | `CONVERT_PACKED_INDEX_TO_OFFSET` | Converts input bitfields to a 16-bit table offset in DE |

Control-flow labels for the bucket loop, histogram entry, persistent-maximum
return, and player-accounting return are now symbolic. Headers describe
inputs, state dependencies, and effects.

## Native Z80 RE: PPS5 — screen and service hardware

| Address | New label | Verified code behavior |
| --- | --- | --- |
| `$40FD` | `PROGRAM_PATTERN_MOVER_TRANSFER` | Programs expand color, screen write control and pattern-mover ports |
| `$422A` | `ROTATE_NIBBLES_IN_WORD_LOW_BYTE` | Nibble rotation in a TERSE stack word |
| `$4234` | `DRAW_PATTERN_WORD_SET_MODE` | Invokes pattern mover from a TERSE drawing entry |
| `$4296` | `COMPUTE_TEXT_RASTER_ADDRESS` | Produces raster destination address from coordinates |
| `$42B1` | `COPY_EXPANDED_TEXT_RASTER` | Raster-copy loop doubling source bytes, advancing rows by $50 |
| `$432E` | `READ_SERVICE_INPUT_BITS` | Reads service inputs and constructs a composite button bitmask |
| `$436B` | `SET_SCREEN_WRITE_MASK_WORD` | Native TERSE write to screen mask port C5 |
| `$4371` | `SET_SCREEN_INTERCEPT_WORD` | Native TERSE write to intercept control C3 |
| `$4377` | `SET_SCREEN_PAGE_WORD` | Native TERSE write to screen-page selector BF |
| `$4658` | `READ_INVERTED_GAME_OPTION_BIT` | Inverts low bit of E1D4 and pushes result |
| `$4665` | `WRITE_THREE_SCREEN_CONTROL_REGS` | Writes C2, C1, C0 from transformed stack values |

Additional internal labels identify the text raster row and pixel loops,
service primary/button input tests, and control-state combination.

## Native Z80 RE: PPS8 — checksum and bookkeeping

The `$BE45` checksum routine has an expanded header and its loop at
`$BE4F` is now `ADDRESS_SUM_CHECKSUM_LOOP`. The TERSE wrapper at
`$BE61` is renamed `REINITIALIZE_BOOKKEEPING_STATE`; it calls the
persistent bookkeeping reset at `$0673` before returning to the
interpreter.

## Byte-preservation and validation

This pass modifies source symbols, references, and comments; it does not
intentionally change any emitted bytes. All renamed labels are local to their
respective assembly units and references were updated together.

**Confirmed from user's local execution:** all 9 PPS ROMs matched expected SHA-1
before the PPQ failure. **Not yet confirmed after this PR:** fresh PPS/PPQ
assembly, all 23 ROM hashes, assembled archive hash, and analyzer execution.
Run `./build.sh` after merge and do not weaken the existing checks.

## Remaining native RE

- Name more PPS1 and PPS5 hardware/control-flow helpers using actual callers.
- Resolve remaining native Z80 hidden in raw `DB` regions only where code
  boundaries and byte-exact assembly can be established.
- Extend source function headers with stack/register effects, exit conditions
  and hardware side effects.
- Map screen pattern bytes and service glyph records with inline comments.
- Cross-reference remaining address-derived TERSE words with native routines
  and build a consistent caller/stack-effect dictionary.
