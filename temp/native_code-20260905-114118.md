# Native Z80 code map

Professor Pac-Man combines native Z80 routines with direct-threaded TERSE
definitions. Native TERSE definitions terminate their metadata with `$FD,$00`,
execute Z80 instructions, and return to the interpreter through `JP (IY)`.
Direct `CALL`, `JP`, `JR`, and `RST` edges connect those definitions to shared
native helpers.

## ROM coverage

| ROM | CPU mapping | Native bytes | Role |
| --- | --- | ---: | --- |
| `pps1` | `$0000-$1FFF` fixed | 5,515 | Reset, TERSE kernel and primitives, interrupts, banking, video and object engine |
| `pps2` | `$2000-$3FFF` fixed | 669 | Fixed-ROM continuation, numeric and I/O helpers |
| `pps3` | `$8000-$9FFF`, bank configuration 0 | 0 | Graphics, text and threaded data |
| `pps4` | `$A000-$BFFF`, bank configuration 0 | 0 | Graphics and threaded data |
| `pps5` | `$4000-$5FFF`, bank configuration 1 | 1,320 | Self-test, rendering, checksumming, protected-memory aliases and hardware exercisers |
| `pps6` | `$6000-$7FFF`, bank configuration 1 | 39 | Operator/self-test native leaves; menus remain threaded |
| `pps7` | `$8000-$9FFF`, bank configuration 1 | 0 | Graphics and threaded data |
| `pps8` | `$A000-$BFFF`, bank configuration 1 | 49 | Random-state and checksum primitives |
| `pps9` | `$C000-$DFFF` fixed | 35 | Game-specific native leaves; presentation logic remains threaded |

The zero counts identify ROMs with no native Z80 bodies. They are executable
content in the broader TERSE sense: the interpreter consumes their threaded
words, tables, text and graphics.

## Reset and startup

Reset enters `RESET_ENTRY` at `$0000`, disables interrupts, and jumps to
`COLD_START` at `$0015`. Startup performs the following native sequence:

1. Select interrupt mode 0 and clear the Astrocade register space addressed
   through ports `$00F4` down to `$0000`.
2. Program the initial video registers and initialize IX to `$EF50` and SP to
   `$F000`.
3. Probe RAM from `$E280`, test the active-low service input, and select program-bank
   configuration 1 with `$20` on port `$F3`.
4. Checksum the selected ROM ranges. Failures select screen-control ports
   `$C0`, `$C1`, or `$C2` and hold the corresponding diagnostic display loop.
5. Fill the upper work-RAM page with nine rotating bit patterns.
6. Select the self-test thread at `$6DD2` when the switch is active, or the
   normal-play thread at `$DEBE` when it is released, and
   enter `TERSE_INIT`/`TERSE_NEXT`.

## Interrupt path

The boot path begins in Z80 interrupt mode 0. `INSTALL_INTERRUPT_HANDLER` at
`$13DA` disables the active handler, programs video interrupt vector `$08` on
port `$0E`, selects interrupt mode 2, installs the handler state, and returns
through TERSE `NEXT`.

`INTERRUPT_ENABLE` at `$0C83` arms dispatch through the state bytes at
`$FEAB-$FEAC`. `INTERRUPT_DISABLE` at `$0C58` either restores normal execution
or saves the complete primary and alternate Z80 register sets plus IX and IY,
then dispatches through the handler pointer at `$FEAA`. The native queue and
handler-list operations occupy `$0C9A-$0D31`.

## Bank switching

Every native instruction that writes port `$F3` is in `pps1`:

| Address | Value/source | Operation |
| --- | --- | --- |
| `$0076` | `$20` | Select program-bank configuration 1 during startup |
| `$00A5` | A | Select the ROM or EPROM bank being checksummed |
| `$00C0` | `$20` | Restore program-bank configuration 1 |
| `$0849` | E | Select a requested bank for a 16-bit fetch |
| `$0850` | `$20` | Restore configuration 1 after the fetch |
| `$0856` | `$00` | Select configuration 0 for an 8-bit fetch |
| `$0860` | `$00` | Select configuration 0 for screen/bank comparison |
| `$08A4` | `$20` | Restore configuration 1 after comparison |
| `$08AC` | `$00` | Select screen-read/configuration 0 |
| `$08B7` | `$20` | Restore configuration 1 after the screen read |

`CHECKSUM_SELECTED_ROM` at `$00A5` is the common engine beneath two distinct
self-test leaves. `CHECKSUM_SUPER_GAME_ROM_8K` at `$4998` obtains a
configuration byte and checksum from the three-byte table at `$DF00` and checks
one 8 KB segment. `CHECKSUM_QUESTION_EPROM_BANK` at `$49AD` forms selector
`$80+bank`, obtains the expected checksum from `$DF38`, and checks the complete
16 KB question window.

The four game-level TERSE writers are fixed in `pps9`:

| Word | Selector | Operation |
| --- | ---: | --- |
| `SELECT_RANDOM_POPULATED_QUESTION_BANK` `$CEC8` | `$80+bank` | Leave a populated question bank active |
| `SELECT_SUPER_GAME_CONFIGURATION_0` `$D0C9` | `$00` | Map screen reads and `pps3`/`pps4` |
| `SELECT_SUPER_GAME_CONFIGURATION_1` `$D0D4` | `$20` | Map `pps5`-`pps8` |
| `NORMAL_PLAY_THREAD` `$DEBE` | `$20` | Establish configuration 1 before normal application dispatch |

The complete physical selector map and caller graph are in
[hardware.md](hardware.md).

## Hardware paths

- Video and function-generator operations are concentrated in
  `$0DA3-$1294`. They program the expand-color register, screen write mask and
  mode, pattern source and destination, skip, mode, and length registers.
- `FETCH_BANKED_WORD`, `FETCH_BANK_ZERO_BYTE`, `COMPARE_SCREEN_AND_BANK`, and
  `READ_SCREEN_WINDOW_BYTE` at `$0846-$08BA` contain the complete native bank
  window and screen-read operations.
- `WRITE_INDEXED_IO_REGISTER` at `$2AE1` emits A through a BC-selected port.
  TERSE sound words use it for the two Astrocade sound devices at `$10-$18`
  and `$50-$58`.
- Primary controls are read at ports `$10` and `$11`; DIP/operator inputs are
  read at `$13`. Native readers occur in startup, bookkeeping validation,
  gameplay support, and the `pps5` self-tests.
- The `pps5` native self-test layer exercises pattern movement, expand color,
  screen control `$C0-$C5`, page select `$BF`, intercept read `$C3`, video
  registers, RAM, input ports, and device latches. `pps6` supplies the threaded
  operator menus and two native input leaves.

## Source convention

Verified native instructions are emitted mnemonically with CPU addresses on
every line. Native entry points use stable labels; internal control-flow targets
use address labels. TERSE colon definitions, execution tokens, inline literals,
branches, strings, and `CASES` tables use structured assembler directives.
Graphics and unclassified tables retain addressed `DB` definitions.
