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

1. Complete native code discovery across `pps1`-`pps9` and close reset,
   interrupt, bank-switching, memory, video, sound, input, and self-test paths.
2. Decode and name the native TERSE primitive vocabulary beginning at `$00FD`;
   match shared primitives against Gorf where the implementations agree.
3. Decode threaded word bodies, recover stack effects, and establish stable
   execution-token and colon-word names.
4. Trace every port `$F3` write and map all `pps3`-`pps8` and `ppq1`-`ppq14`
   bank selections to their callers and presentation roles.
5. Decode the `ppq` record format, including text, answers, categories,
   difficulty, animation commands, timing, and graphics references.
6. Label the circuitry, video, audio, switch, device, statistics, and settings
   self-test paths using the operations manual as the behavioral specification.
7. Recover the ten PLS153A fuse maps as Boolean equations and reconcile them
   with the schematics and MAME driver.
8. Classify graphics, sound tables, operator settings, statistics, and
   battery-backed bookkeeping structures.

## Source coverage rule

Names enter the release source only after their behavior is demonstrated by
native code, threaded callers, hardware access, or documented screen behavior.
Addressed byte definitions preserve all other ROM contents without speculative
labels.
