# Professor Pac-Man reverse-engineering status

This document tracks analysis coverage and planned work. Release-facing
technical descriptions remain in `README.md`, `docs/hardware.md`, and
`docs/terse.md`.

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
- Closed the first `ppq1` family from
  `MIRROR_FLOCK_V0_1_T0_2_INIT` through its two prompt
  variants, four outer actions, three child image actions, bitmap and descriptor
  objects, randomized three-slot permutation, fixed-ROM answer comparison, and
  scheduler completion contract.
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
- Completed semantic naming across the PPQ execution layer. All 401 reachable
  colon definitions, 130 rooted initializers, 45 action lists, and 106 unique
  tier buckets now carry role-based names. Initializer labels encode family,
  variant range, and tier membership; internal words encode graph ownership,
  lifecycle stage, and demonstrated behavior. The family analyzer rejects the
  former address-derived execution labels.
- Added a reproducible PPQ family analyzer and made the build verify the 130
  promoted initializers and 45 family graphs after the complete MAME package
  passes its byte and SHA-1 checks.
- Decoded the shared configuration-0 question-presentation vocabulary in
  `pps3`: scene initialization, cached object setup, three-slot permutation,
  cross-slot object updates, optional drawing, presentation-table loading, and
  scheduler completion. The analyzer now proves the universal presentation
  contract and reports exact reachable call counts across all 45 families.
- Promoted the complete transitive closure of all 45 PPQ family action graphs:
  401 bank-local colon definitions, 10,532 TERSE cells, and 27,353 executable
  bytes. Every four-stage action list and outer setup/correct/distractor entry
  is symbolic; internal calls, literals, branches, counted strings, and case
  tables are emitted structurally and enforced by the family analyzer.
- Closed the fixed-ROM question-round state machine from opening selection
  through PPQ dispatch, response acquisition, correctness/timeout resolution,
  per-player accounting, bonus scheduling, continuation, and configuration-1
  handoff. The promoted closure contains 130 colon definitions, 3,989 TERSE
  cells, and 17 counted action lists across `pps3`, `pps4`, `pps8`, and `pps9`.
  A dedicated analyzer enforces list membership, physical bank context, and
  structured source coverage during every build.
- Closed the configuration-1 main-game progression from normal-play entry
  through attract mode, credits/start selection, one-player and two-player
  state, question handoff, game over, high-score insertion, and initials entry.
  The verified closure contains 60 colon definitions, 1,960 TERSE cells, and
  11 counted action lists across `pps8` and `pps9`.
- Corrected the startup topology: the released test switch selects the fixed
  `$DEBE` normal-play wrapper and `$BE66` main application; the active test
  switch selects the `$6DD2` self-test/operator thread.
- Recovered all ten PLS153A fuse maps as exact Boolean equations. The decoder
  validates the 1,842-fuse binary format, member SHA-1 values, 32 shared logic
  terms, ten output-enable terms, and ten polarity fuses. Across the set it
  identifies 63 driven outputs and 199 connected product terms.
- Reconciled the CPU, EPROM, and screen-RAM custom-device locations with the
  operations-manual assembly records. The three Game Board archive suffixes
  are retained as archival identifiers because that schematic revision assigns
  those reference designators to incompatible package types.

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

The fuse maps, pin roles, output enables, polarities, and equations are
documented in `docs/pls153a_equations.md` and checked by
`tools/decode_pls153a.py` during every build.

## Plan of attack

1. Classify graphics, sound tables, operator settings, statistics, and
   battery-backed bookkeeping structures.

## Source coverage rule

Names enter the release source only after their behavior is demonstrated by
native code, threaded callers, hardware access, or documented screen behavior.
Addressed byte definitions preserve all other ROM contents without speculative
labels.
