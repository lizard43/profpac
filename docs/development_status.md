# Professor Pac-Man reverse-engineering status

This document tracks analysis coverage and planned work. Release-facing
technical descriptions remain in `README.md`, `hardware.md`, and `terse.md`.

## Completed

- Recorded the complete MAME ROM inventory and physical device sizes.
- Established the fixed, banked, EPROM-board, RAM, video, and I/O maps.
- Created byte-exact zmac source for program ROMs `pps1` through `pps9`.
- Identified the reset path, TERSE colon entry, interpreter initialization, and
  direct-threaded `NEXT` loop.
- Established the TERSE register and stack model.
- Connected manual-defined self-tests to hardware analysis targets.
- Added per-ROM comparison and whole-archive SHA-1 verification to the build.
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
selects these banks through port `$F3`. Analysis will identify the question and
answer records, categories, difficulty data, presentation commands, animation
data, text encoding, and graphics references.

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

1. Assign semantic names and stack effects to the structurally decoded colon
   definitions, beginning with the initial, service, operator, and self-test
   call graphs.
2. Map the threaded callers of the port `$F3` primitives and assign all
   `pps3`-`pps8` and `ppq1`-`ppq14`
   bank selections to their callers and presentation roles.
3. Decode the `ppq` record format, including text, answers, categories,
   difficulty, animation commands, timing, and graphics references.
4. Label the threaded circuitry, video, audio, switch, device, statistics, and settings
   self-test paths using the operations manual as the behavioral specification.
5. Recover the ten PLS153A fuse maps as Boolean equations and reconcile them
   with the schematics and MAME driver.
6. Classify graphics, sound tables, operator settings, statistics, and
   battery-backed bookkeeping structures.

## Source coverage rule

Names enter the release source only after their behavior is demonstrated by
native code, threaded callers, hardware access, or documented screen behavior.
Addressed byte definitions preserve all other ROM contents without speculative
labels.
