# Professor Pac-Man PLS153A equations

The MAME set preserves ten Signetics PLS153A programmable-logic fuse maps.
Together they recover 63 driven outputs and 199 connected sum-of-products terms
used by the 16 Color CPU Card, 640K EPROM Board, Professor Pac-Man Game Board,
and Screen RAM Board.

The equations below are decoded directly from the archived fuse maps. They use
the PLS153A data-sheet pin names so that the logic remains exact and independent
of board-revision signal aliases.

## Device architecture

The PLS153A is an 18-by-42-by-10 two-level programmable logic array. Eight pins
are dedicated inputs. Ten bidirectional pins may be outputs or additional
feedback inputs. Thirty-two product terms feed the ten programmable OR gates;
ten more product terms independently control output enable.

| Fuse range | Count | Function |
| ---: | ---: | --- |
| 0-1471 | 1,472 | 32 rows of 36 AND fuses and 10 OR-selection fuses |
| 1472-1831 | 360 | Ten 36-fuse output-enable product terms |
| 1832-1841 | 10 | Output-polarity selection |
| **Total** | **1,842** | Complete PLS153A map |

Each MAME binary member begins with a four-byte big-endian fuse count
(`0x00000732`), followed by 1,842 fuse states packed least-significant bit
first. The resulting file size is 235 bytes.

## Pin notation

| Logic name | DIP pin | Role |
| --- | ---: | --- |
| `I0`-`I7` | 1-8 | Dedicated inputs |
| `B0` | 9 | Bidirectional I/O and feedback |
| `B1`-`B9` | 11-19 | Bidirectional I/O and feedback |
| GND | 10 | Ground |
| VCC | 20 | Supply |

A leading `/` means logical complement, `&` means AND, and `|` means OR.
A complemented name on the left denotes an active-low programmed output.
`.oe` is the output-enable equation; `1` means continuously driven.
`input only` means the control term disables the output buffer and the pin
remains available to the AND array as an input.

## Board inventory

| Archived member | Board group | Driven outputs | Connected terms |
| --- | --- | ---: | ---: |
| `pls153a_cpu.u12` | 16 Color CPU Card | 5 | 8 |
| `pls153a_cpu.u16` | 16 Color CPU Card | 5 | 27 |
| `pls153a_epr.u6` | 640K EPROM Board | 7 | 30 |
| `pls153a_epr.u7` | 640K EPROM Board | 4 | 4 |
| `pls153a_gam.u5` | Game Board | 9 | 59 |
| `pls153a_gam.u10` | Game Board | 2 | 2 |
| `pls153a_gam.u11` | Game Board | 5 | 7 |
| `pls153a_scr.u19` | Screen RAM Board | 8 | 21 |
| `pls153a_scr.u39` | Screen RAM Board | 8 | 31 |
| `pls153a_scr.u55` | Screen RAM Board | 9 | 10 |

The operations-manual assembly records identify 20-pin custom devices U12 and
U16 on the CPU card, U6 and U7 on the EPROM board, and U19, U39, and U55 on the
screen-RAM board. Those locations agree with the corresponding archive names.
The manual's Game Board component designations do not agree with the three
`gam.*` suffixes: its U5 is a 40-pin custom I/O device and U10/U11 are
discrete buffer devices. Accordingly, the `gam.*` suffixes are retained as
archive identifiers and are not presented as verified reference designators
for that schematic revision.

MAME stores these ten members in an archival `plds` region. The Astrocade
driver implements the machine's memory, bank, video, and I/O behavior directly;
it does not execute these fuse maps. Equation recovery therefore documents the
original board logic without changing emulation or ROM assembly.

## Recovered equations

### `pls153a_cpu.u12`

```text
B0 = input only
B1 = input only
B2 = input only
B3 = input only
/B4 = I1 & /I4 & /I5 & /I7 & B2 & B3
    | I1 & I4 & /I5 & /I7 & B3
B4.oe = 1
/B5 = I1 & I2 & /B0
    | I1 & I2 & /I5 & /I7 & B2 & B3
    | I1 & I2 & I4 & /I5 & /I7 & /B2 & B3
B5.oe = 1
B6 = B1 & B2
B6.oe = 1
/B7 = I0
B7.oe = 1
B8 = input only
/B9 = /I3 & /I6 & /B0 & B1 & B2 & /B8
B9.oe = 1
```

### `pls153a_cpu.u16`

```text
B0 = I1 & I7 & /B5 & /B6 & /B7 & /B8 & B9
   | I1 & I7 & /B5 & /B6 & /B7 & B8 & /B9
   | I1 & I7 & /B5 & /B6 & B7 & /B8 & /B9
   | I1 & I7 & /B5 & B6 & /B7 & /B8 & /B9
   | I3 & /I7 & /B5 & /B6 & /B7 & /B8 & B9
   | I3 & /I7 & /B5 & /B6 & /B7 & B8 & /B9
   | I3 & /I7 & /B5 & /B6 & B7 & /B8 & /B9
   | I3 & /I7 & /B5 & B6 & /B7 & /B8 & /B9
   | B5 & /B6 & B7 & /B8 & /B9
   | B5 & B6 & /B7 & /B8 & /B9
   | I5 & /B5 & B6 & B7 & B8 & B9
B0.oe = 1
B1 = I0 & I7 & /B5 & /B6 & /B7 & /B8 & B9
   | I0 & I7 & /B5 & /B6 & /B7 & B8 & /B9
   | I0 & I7 & /B5 & /B6 & B7 & /B8 & /B9
   | I0 & I7 & /B5 & B6 & /B7 & /B8 & /B9
   | I2 & /I7 & /B5 & /B6 & /B7 & /B8 & B9
   | I2 & /I7 & /B5 & /B6 & /B7 & B8 & /B9
   | I2 & /I7 & /B5 & /B6 & B7 & /B8 & /B9
   | I2 & /I7 & /B5 & B6 & /B7 & /B8 & /B9
   | I4 & /B5 & B6 & B7 & B8 & B9
   | B5 & /B6 & /B7 & B8 & /B9
   | B5 & B6 & /B7 & /B8 & /B9
B1.oe = 1
/B2 = B9
    | B8
    | B7
    | B6
B2.oe = 1
/B3 = B6 & B7 & B8 & B9
B3.oe = 1
B4 = 0
B4.oe = I6
B5 = input only
B6 = input only
B7 = input only
B8 = input only
B9 = input only
```

### `pls153a_epr.u6`

```text
B0 = input only
B1 = input only
B2 = input only
/B3 = I0 & /I1 & /I2 & /I3 & /I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
    | I0 & /I1 & /I2 & I3 & /I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
    | I0 & /I1 & /I2 & /I3 & /I4 & /I5 & I6 & I7 & B0 & /B1 & /B2
    | I0 & /I1 & /I2 & I3 & /I4 & /I5 & I6 & I7 & B0 & /B1 & /B2
    | I0 & /I1 & /I2 & /I3 & I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
    | I0 & /I1 & /I2 & I3 & I4 & /I5 & I6 & I7 & /B0 & B1 & /B2
    | I0 & /I1 & /I2 & /I3 & I4 & /I5 & I6 & I7 & B0 & B1 & /B2
    | I0 & /I1 & /I2 & I3 & I4 & /I5 & I6 & I7 & B0 & B1 & /B2
    | I0 & /I1 & /I2 & /I3 & /I4 & I5 & I6 & I7 & /B0 & B1 & /B2
    | I0 & /I1 & /I2 & I3 & /I4 & I5 & I6 & I7 & /B0 & B1 & /B2
B3.oe = 1
B4 = I0 & /I1 & /I2 & /I3 & /I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
   | I0 & /I1 & /I2 & I3 & /I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
   | I0 & /I1 & /I2 & /I3 & /I4 & /I5 & I6 & I7 & B0 & /B1 & /B2
   | I0 & /I1 & /I2 & I3 & /I4 & /I5 & I6 & I7 & B0 & /B1 & /B2
   | I0 & /I1 & /I2 & /I3 & I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
   | I0 & /I1 & /I2 & I3 & I4 & /I5 & I6 & I7 & /B0 & B1 & /B2
   | I0 & /I1 & /I2 & /I3 & I4 & /I5 & I6 & I7 & B0 & B1 & /B2
   | I0 & /I1 & /I2 & I3 & I4 & /I5 & I6 & I7 & B0 & B1 & /B2
   | I0 & /I1 & /I2 & /I3 & /I4 & I5 & I6 & I7 & /B0 & B1 & /B2
   | I0 & /I1 & /I2 & I3 & /I4 & I5 & I6 & I7 & /B0 & B1 & /B2
B4.oe = 1
/B5 = I0 & /I1 & /I2 & I3 & /I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
    | I0 & /I1 & /I2 & /I3 & I4 & /I5 & I6 & I7 & B0 & B1 & /B2
B5.oe = 1
/B6 = I0 & /I1 & /I2 & /I3 & /I4 & /I5 & I6 & I7 & B0 & /B1 & /B2
    | I0 & /I1 & /I2 & I3 & I4 & /I5 & I6 & I7 & B0 & B1 & /B2
B6.oe = 1
/B7 = I0 & /I1 & /I2 & I3 & /I4 & /I5 & I6 & I7 & B0 & /B1 & /B2
    | I0 & /I1 & /I2 & /I3 & /I4 & I5 & I6 & I7 & /B0 & B1 & /B2
B7.oe = 1
/B8 = I0 & /I1 & /I2 & /I3 & I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
    | I0 & /I1 & /I2 & I3 & /I4 & I5 & I6 & I7 & /B0 & B1 & /B2
B8.oe = 1
/B9 = I0 & /I1 & /I2 & /I3 & /I4 & /I5 & I6 & I7 & /B0 & /B1 & /B2
    | I0 & /I1 & /I2 & I3 & I4 & /I5 & I6 & I7 & /B0 & B1 & /B2
B9.oe = 1
```

### `pls153a_epr.u7`

```text
B0 = input only
B1 = input only
B2 = input only
B3 = input only
B4 = input only
B5 = input only
B6 = /B2
B6.oe = 1
/B7 = /B2
B7.oe = 1
B8 = B3
B8.oe = 1
B9 = I0 & I1 & I2 & I3 & /I4 & /I5 & I6 & I7 & /B0 & B1 & B2 & /B4 & B5
B9.oe = 1
```

### `pls153a_gam.u5`

```text
B0 = I2 & /I3 & /I4 & /I5 & /I6 & /I7
   | I2 & /I3 & /I4 & I5 & /I6 & /I7
   | I2 & /I3 & /I4 & /I5 & I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & /B9
   | I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & /B9
   | I1 & I2 & /I3 & /I4 & I5 & /I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
   | I2 & /I3 & /I4 & I5 & I6 & I7
B0.oe = 1
/B1 = I2 & /I3 & /I4 & I5 & I6 & I7
    | /I2 & I3 & /I4 & I5 & I6 & I7
B1.oe = 1
B2 = /I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
B2.oe = 1
B3 = /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & /B9
   | I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & /B9
   | I1 & I2 & /I3 & /I4 & I5 & /I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
B3.oe = 1
B4 = I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & /B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
B4.oe = 1
B5 = /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & /B9
   | I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & /B9
   | I1 & I2 & /I3 & /I4 & I5 & /I6 & I7
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & I6 & /I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & I6 & /I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & /I5 & /I6 & I7 & B9
   | /I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B9
B5.oe = 1
/B6 = I2 & /I3 & /I4 & /I5 & I6 & I7
B6.oe = 1
/B7 = I2 & /I3 & /I4 & I5 & /I6 & /I7
B7.oe = 1
/B8 = I2 & /I3 & /I4 & /I5 & /I6 & /I7
B8.oe = 1
B9 = input only
```

### `pls153a_gam.u10`

```text
/B0 = I0 & /I1 & I2 & /I3 & /I4 & I5 & /I6 & I7 & B2 & B3 & /B4 & B5 & B6 & /B7 & B8 & /B9
B0.oe = 1
/B1 = B2 & B3 & /B4 & /B5 & B6 & B7 & B8 & B9
B1.oe = 1
B2 = input only
B3 = input only
B4 = input only
B5 = input only
B6 = input only
B7 = input only
B8 = input only
B9 = input only
```

### `pls153a_gam.u11`

```text
B0 = /I0 & I1 & /I2 & I3 & I4 & I5 & I6 & I7 & /B5 & B7
B0.oe = 1
/B1 = /I0 & I1 & /I2 & I3 & I4 & I5 & /I6 & I7 & B7
B1.oe = 1
B2 = /I0 & I1 & I2 & I3 & I5 & /I7 & /B7 & B8 & /B9
   | /I0 & I1 & I2 & I3 & I5 & /I7 & /B7 & B9
   | /I0 & I1 & I2 & I3 & I5 & /I7 & B6 & /B7 & /B8 & /B9
B2.oe = 1
B3 = /I0 & I1 & I2 & I3 & I5 & /I7 & /B6 & /B7 & /B8 & /B9
B3.oe = 1
B4 = I0 & /I1 & I2 & I5 & /I7 & /B7
B4.oe = 1
B5 = input only
B6 = input only
B7 = input only
B8 = input only
B9 = input only
```

### `pls153a_scr.u19`

```text
B0 = input only
B1 = input only
B2 = /I0 & /I1 & /I4 & I7 & B0
   | I0 & /I1 & /I2 & /I3 & I6 & I7 & B0
   | /I0 & I1 & /I2 & /I3 & I6 & /I7 & B0
   | I0 & I1 & /I2 & /I3 & I6 & I7 & /B0
   | /I0 & /I1 & /I2 & /I3 & I4 & I7 & /B0
B2.oe = 1
B3 = I0 & I1 & I7 & B0
   | I0 & /I1 & /I2 & /I3 & I6 & /I7 & B0
   | /I0 & I1 & /I4 & I7 & /B0
   | I0 & I1 & /I2 & /I3 & I6 & /I7 & /B0
B3.oe = 1
B4 = /I0 & /I1 & /I4 & /I7 & B0
   | /I0 & /I1 & /I2 & /I3 & /I7 & B0
B4.oe = 1
B5 = I0 & I1 & I7 & B0
B5.oe = 1
/B6 = I0 & I1 & /I2 & /B1 & /B5
B6.oe = 1
/B7 = I0 & /I1 & /I2 & /I3 & I6 & /I7 & /B0
    | I0 & /I1 & /I2 & /I3 & I6 & I7 & B0
    | /I0 & I1 & /I2 & /I3 & I6 & /I7 & B0
    | I0 & I1 & /I2 & /I3 & I6 & I7 & /B0
    | I0 & /I1 & /I4 & I5 & /I6 & I7 & B0
B7.oe = 1
B8 = /I0 & /I7 & B0
B8.oe = 1
B9 = /I0 & I1 & /I2 & /I3 & I6 & I7 & /B0
   | I0 & I1 & /I2 & /I3 & I6 & I7 & B0
B9.oe = 1
```

### `pls153a_scr.u39`

```text
B0 = /I0 & I1 & /I2 & /I3 & I7
   | I0 & I1 & /I2 & /I3 & I6 & /I7
B0.oe = 1
/B1 = /I4 & /I5 & /I6 & /I7
B1.oe = 1
B2 = input only
B3 = input only
B4 = 0
B4.oe = I3 & B1
B5 = 0
B5.oe = I2 & /I3 & B1
B6 = I7 & /B2 & /B3
   | /I3 & I7 & /B2 & B3
   | I3 & /I7 & /B2 & B3
   | I3 & /I4 & /I5 & /I6 & /I7 & B2 & /B3
   | I7 & B2 & /B3
   | /I0 & /I1 & /I2 & /I3 & I7 & B2 & B3
   | I3 & B2 & B3
B6.oe = 1
B7 = I6 & /B2 & /B3
   | /I2 & I6 & /B2 & B3
   | I2 & /I6 & /B2 & B3
   | I2 & /I4 & /I5 & /I6 & /I7 & B2 & /B3
   | I6 & B2 & /B3
   | /I0 & /I1 & /I2 & /I3 & I6 & B2 & B3
   | I2 & B2 & B3
B7.oe = 1
B8 = I5 & /B2 & /B3
   | /I1 & I5 & /B2 & B3
   | I1 & /I5 & /B2 & B3
   | I1 & /I4 & /I5 & /I6 & /I7 & B2 & /B3
   | I5 & B2 & /B3
   | /I0 & /I1 & /I2 & /I3 & I5 & B2 & B3
   | I1 & B2 & B3
B8.oe = 1
B9 = I4 & /B2 & /B3
   | /I0 & I4 & /B2 & B3
   | I0 & /I4 & /B2 & B3
   | I0 & /I4 & /I5 & /I6 & /I7 & B2 & /B3
   | I4 & B2 & /B3
   | /I0 & /I1 & /I2 & /I3 & I4 & B2 & B3
   | I0 & B2 & B3
B9.oe = 1
```

### `pls153a_scr.u55`

```text
B0 = input only
B1 = /B0
B1.oe = 1
/B2 = I0 & I1 & I2 & /I3 & I4 & I5 & I6 & I7
B2.oe = 1
/B3 = I0 & I1 & /I2 & I3 & I4 & I5 & I6 & /I7
B3.oe = 1
/B4 = I0 & /I1 & /I2 & I3 & I4 & I5 & I6 & /I7
B4.oe = 1
/B5 = I0 & I1 & I2 & /I3 & I4 & I5 & I6 & /I7
B5.oe = 1
/B6 = I0 & /I2 & /I3 & I4 & I5 & I6 & /I7
    | I0 & /I1 & I2 & /I3 & I4 & I5 & I6 & /I7
B6.oe = 1
/B7 = I0 & /I1 & I2 & /I3 & I4 & I5 & I6 & /I7 & /B6
B7.oe = 1
/B8 = I0 & I1 & /I2 & /I3 & I4 & I5 & I6 & /I7 & /B6
B8.oe = 1
/B9 = I0 & /I1 & /I2 & /I3 & I4 & I5 & I6 & /I7 & /B6
B9.oe = 1
```


## Verification

Run the decoder against the canonical MAME archive:

```sh
python3 tools/decode_pls153a.py roms/orig/profpac.zip
python3 tools/decode_pls153a.py --check roms/orig/profpac.zip
```

The check validates the binary header, exact length, padding bits, all ten
member names, and each member's canonical SHA-1 before decoding.

## References

- [Philips Semiconductors, *PLS153/A Field Programmable Logic Arrays
  (18 x 42 x 10)*](https://www.farnell.com/datasheets/65823.pdf), product
  specification, 1993.
- Bally Midway, *Professor Pac-Man Parts and Operating Manual*, board assembly
  records and schematics.
- [MAME `src/tools/jedutil.cpp`](https://github.com/mamedev/mame/blob/master/src/tools/jedutil.cpp),
  PLS153/82S153 fuse-map support.
- [MAME `src/mame/bally/astrocde.cpp`](https://github.com/mamedev/mame/blob/master/src/mame/bally/astrocde.cpp),
  Professor Pac-Man ROM and machine definitions.
