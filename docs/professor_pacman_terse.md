# TERSE runtime notes

Professor Pac-Man contains a direct-threaded, Forth-derived execution engine.
The identification is based on executable structure in `pps1`, not on the
generic historical description that the game was written in FORTH.

## Runtime entry points

| Address | Name | Contract |
| --- | --- | --- |
| `$0008` | `TERSE_COLON_ENTRY` | Save the caller's threaded instruction pointer and enter a colon definition |
| `$00F2` | `TERSE_INIT` | Cache the address of `TERSE_NEXT` in `IY` |
| `$00F6` | `TERSE_NEXT` | Fetch the next 16-bit execution token and jump to its native implementation |

## Register model

| Register | Confirmed role |
| --- | --- |
| `BC` | Threaded instruction pointer |
| `IY` | Cached address of `TERSE_NEXT` (`$00F6`) |
| `IX` | Downward-growing threaded return stack, initialized to `$EF50` |
| `SP` | Native Z80 call/data stack, initialized to `$F000` |
| `HL`, `DE` | Primitive operands and conventional parameter-stack values |

The separation between `IX` and `SP` is decisive. Colon entry saves `BC` on the
`IX` stack, obtains the new threaded address from the native call return on
`SP`, and dispatches through `IY`.

```mermaid
flowchart TD
    Colon["CALL colon word"] --> Enter["$0008 saves BC on IX stack"]
    Enter --> NewIP["POP BC loads word body"]
    NewIP --> Next["$00F6 fetches 16-bit token"]
    Next --> Primitive["Jump to native primitive"]
    Primitive --> Next
```

## Kernel bytes

Initialization falls through into the seven-byte `TERSE_NEXT` loop:

```z80
TERSE_INIT:
        ld      iy,TERSE_NEXT
TERSE_NEXT:
        ld      a,(bc)
        inc     bc
        ld      l,a
        ld      a,(bc)
        inc     bc
        ld      h,a
        jp      (hl)
```

`TERSE_COLON_ENTRY` is thirteen bytes:

```z80
TERSE_COLON_ENTRY:
        dec     ix
        ld      (ix),b
        dec     ix
        ld      (ix),c
        pop     bc
        jp      (iy)
```

## Native primitive field

The dense native-code run beginning at `$00FD` has the expected Forth kernel
shape: literal fetches from `(BC)`, stack shuffles, arithmetic, comparisons,
memory fetch/store, port access, branches, loop control, and transitions back
through `JP (IY)`. It is therefore treated as a primitive vocabulary, not as
ordinary game control flow.

The resident vocabulary at `$00FD-$05B7` is decoded and named. It contains the
foundational stack, arithmetic, comparison, loop, branch, frame, port-I/O, and
memory-update words used by compiled game definitions. The complete address
and stack-effect reference is maintained in
[terse_vocabulary.md](terse_vocabulary.md).

The foundational ordering and native implementations establish a direct code
lineage with Gorf. Sea Wolf II carries the earlier compact form of the same
dispatcher and register ABI.

## Threaded application coverage

The program ROMs contain 357 structurally validated colon definitions and
4,925 decoded execution-token cells. Threads are represented as `RST $08`
entries, `DW` execution tokens and word operands, `DB` byte operands and
counted strings, and labeled branch/`CASES` targets. The complete coverage,
initial and service roots, bank contexts, and thread-proven native entries are
documented in [threaded_code.md](threaded_code.md).

## Architecture identification

Professor Pac-Man is a TERSE-family game. Its direct-threaded dispatcher,
separate native and threaded stacks, colon-word entry path, and native primitive
field implement the DNA threaded architecture used by the game application.
