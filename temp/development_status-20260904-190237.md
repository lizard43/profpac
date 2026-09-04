# Professor Pac-Man reverse-engineering status

This document tracks analysis coverage and planned work. Release-facing
technical descriptions remain in `README.md`, `hardware.md`, and `terse.md`.

## Completed

- Recorded the complete MAME ROM inventory and physical device sizes.
- Established the fixed, banked, EPROM-board, RAM, video, and I/O maps.
- Created byte-exact zmac source for program ROMs `pps1` through `pps9`.
- Created independent byte-exact zmac source for question ROMs `ppq1` through
  `ppq14`, with symbolic bank headers, root directories, tier buckets, and all
  130 bank-local rooted initializer entry points.
- Identified the reset path, TERSE colon entry, interpreter initialization, and
  direct-threaded `NEXT` loop.
- Established the TERSE register and stack model.
- Connected manual-defined self-tests to hardware analysis targets.
- Added explicit expected/actual SHA-1 reporting and baseline-member comparison
  for all twenty-three assembled ROMs. The build also verifies the complete
  MAME archive byte-for-byte and against its canonical SHA-1.
- Completed native Z80 discovery across all nine program ROMs and emitted the
  verified instruction bodies mnemonically.
- Closed the native reset, interrupt, program-bank, screen-window, video,
  pattern-mover, sound-register, input, RAM and self-test hardware paths.
- Established that `pps3` and `pps4` contain threaded TERSE definitions but no
  native Z80 bodies, while `pps7` contains data and no validated native or
  colon-definition entry.
- Decoded and named the resident TERSE vocabulary at `$00FD-$05B7`, including
  stack effects, frame words, protected-memory stores, and Gorf/Sea Wolf II
  correspondence.
- Structurally decoded 357 colon definitions and 4,925 threaded cells across
  both program-bank configurations, including inline operands, branch graphs,
  counted strings, and `CASES` tables.
- Promoted thread-proven native entries and the configuration-1
  protected-memory linkage vocabulary; total native coverage is 7,627 bytes
  and 4,226 instructions.
- Replaced 3,423 bare execution-token addresses in the banked threaded source
  with shared symbolic constants covering the resident vocabulary, proven
  fixed application words, configuration-1 linkage words, and service root.
- Resolved the complete manual-visible service hierarchy and assigned semantic
  labels and stack effects to 50 colon definitions plus the native ROM-layout
  predicate. This closes the circuitry, RAM, ROM, continuous, video, audio,
  switch, device, statistics, and operator-settings dispatch paths.
- Closed port `$F3` banking from the MAME device model through every native and
  TERSE writer. The map now assigns configurations 0-3, `pps3`-`pps8`, all
  forty question-board selectors, `ppq1`-`ppq14`, the question-round switch
  sequence, empty-bank probes, and both diagnostic checksum tables.
- Decoded the common PPQ runtime grammar: bank root, eight tier pointers,
  byte-counted initializer buckets, executable TERSE initializers, and
  byte-counted action lists. All 201 rooted references validate as colon
  entries and resolve to 130 bank-local unique initializers.
- Recovered the six-question normal and bonus tier formula, the sixteen-entry
  action-list history ring, the every-fifth-candidate relaxation, and the
  bounded forced-accept path. Added a validator that reproduces the complete
  PPQ directory inventory from the MAME archive.
- Closed the first `ppq1` family from `QUESTION_INITIALIZER_539E` through its
  two prompt variants, four outer actions, three child image actions, bitmap
  and descriptor objects, randomized three-slot permutation, fixed-ROM answer
  comparison, and scheduler completion contract.
- Grouped all 130 bank-local rooted initializers by the action-list identity
  consumed by the repeat filter, establishing 45 executable question families.
  Every rooted initializer is emitted as symbolic TERSE source with named
  family action-list constants, literal operands, variant state, arithmetic,
  stores, and returns.
- Walked all 180 family action roots and every reachable local colon word.
  Every family has a four-action list and reaches the common scene setup,
  randomized correct slot, distinct second slot, remaining third slot,
  child-action join, cooperative yield, and completion contract. The family
  inventory records tier coverage, variant ranges and offsets, direct prompts,
  drawing paths, and task-vector animation use.
- Added a reproducible PPQ family analyzer and made the build verify the 130
  promoted initializers and 45 family graphs after the complete MAME package
  passes its byte and SHA-1 checks.

## ROM and logic inventory

### Program ROMs: `pps1`-`pps9`

Nine 8 KB devices contain the Z80 program, TERSE runtime and threaded words,
graphics, tables, diagnostics, and game-specific data. Each physical device has
an independent assembly unit because the fixed and banked devices occupy
overlapping runtime address spaces.

- `pps1`-`pps2`: fixed program at `$0000-$3FFF`
- `pps3`-`pps8`: banked program and data
- `pps9`: fixed program at `$C000-$DFFF`

### Question EPROMs: `ppq1`-`ppq14`

Fourteen 16 KB devices populate 224 KB of the 640 KB EPROM board. The program
selects these banks through port `$F3`. Each device contains a common directory
over compiled TERSE initializers and counted action lists, followed by the
family-specific threads, counted ASCII, graphics, animation, and procedural
parameters used to present questions.

### Programmable logic: `pls153a_*`

Ten 235-byte dumps contain PLS153A fuse maps rather than processor code.

- `pls153a_cpu.u12`, `pls153a_cpu.u16`: 16 Color CPU Card
- `pls153a_epr.u6`, `pls153a_epr.u7`: 640K EPROM Board
- `pls153a_gam.u5`, `pls153a_gam.u10`, `pls153a_gam.u11`: Game Board
- `pls153a_scr.u19`, `pls153a_scr.u39`, `pls153a_scr.u55`: Screen RAM Board

PLD analysis will recover Boolean equations and correlate their inputs and
outputs with the schematics and MAME's memory, banking, screen-control, and
intercept implementation.

## Plan of attack

1. Extend semantic naming from the closed startup/service/banking surface into the
   gameplay, attract, scoring, question-presentation, and initials call graphs.
2. Recover the ten PLS153A fuse maps as Boolean equations and reconcile them
   with the schematics and MAME driver.
3. Classify graphics, sound tables, operator settings, statistics, and
   battery-backed bookkeeping structures.

## Source coverage rule

Names enter the release source only after their behavior is demonstrated by
native code, threaded callers, hardware access, or documented screen behavior.
Addressed byte definitions preserve all other ROM contents without speculative
labels.
