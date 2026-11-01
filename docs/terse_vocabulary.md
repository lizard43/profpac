# Professor Pac-Man TERSE vocabulary

The resident vocabulary occupies `$00FD-$05B7` in `pps1`. Execution tokens are
16-bit native addresses. `BC` points to the next threaded cell, `SP` is the
parameter stack, `IX` is the return/control stack, and normal words resume the
dispatcher with `JP (IY)`.

Names use the TERSE Standard Glossary dated September 21, 1981 where the ROM
semantics agree. Exact Gorf correspondences retain the recovered Gorf source
convention; specialized words absent from the glossary use behavioral names.
A leading underscore identifies a thread-dispatchable TERSE word. Lowercase
labels identify native helpers that are not execution tokens. These recovered
labels describe the shipped binary and are not presented as Professor Pac-Man's
original symbol table.

## Foundational words

| Address | Source label | TERSE spelling | Stack effect | Operation |
| ---: | --- | --- | --- | --- |
| `$00FD` | `_RETURN` | `RETURN` | `( control: return -- )` | Restore the caller's threaded IP from IX |
| `$0109` | `_LIT` | `LIT` | `( -- n )` | Push the following 16-bit inline literal |
| `$0112` | `_LITbyte` | `LITbyte` | `( -- n )` | Push the following unsigned inline byte |
| `$011A` | `_BARRAY` | `BARRAY` | `( i -- address )` | Add byte index to the following inline base address |
| `$0125` | `_ARRAY` | `ARRAY` | `( i -- address )` | Add doubled word index to the following inline base address |
| `$012A` | `_0` | `0` | `( -- 0 )` | Push zero |
| `$0130` | `_1` | `1` | `( -- 1 )` | Push one |
| `$0136` | `_DUP` | `DUP` | `( n -- n n )` | Duplicate the top cell |
| `$013B` | `_2DUP` | `2DUP` | `( m n -- m n m n )` | Duplicate the top two cells |
| `$0143` | `_DROP` | `DROP` | `( n -- )` | Discard the top cell |
| `$0146` | `_SWAP` | `SWAP` | `( m n -- n m )` | Exchange the top two cells |
| `$014C` | `_at` | `@` | `( address -- n )` | Fetch a little-endian 16-bit word |
| `$0153` | `_Bat` | `B@` | `( address -- n )` | Fetch and zero-extend one byte |
| `$015A` | `_plus` | `+` | `( m n -- sum )` | Add two 16-bit integers |
| `$0160` | `_minussign` | `-` | `( m n -- difference )` | Subtract `n` from `m` |
| `$0168` | `_MINUS` | `MINUS` | `( n -- -n )` | Two's-complement negation |
| `$016E` | `_COM` | `COM` | `( n -- ~n )` | One's complement |
| `$0179` | `_AND` | `AND` | `( m n -- result )` | Bitwise AND |
| `$0188` | `_OR` | `OR` | `( m n -- result )` | Bitwise OR |
| `$0190` | `_1minus` | `1-` | `( n -- n-1 )` | Decrement |
| `$0195` | `_1plus` | `1+` | `( n -- n+1 )` | Increment |
| `$019A` | `_2plus` | `2+` | `( n -- n+2 )` | Add two |
| `$01A0` | `_2minus` | `2-` | `( n -- n-2 )` | Subtract two |
| `$01A6` | `_2splat` | `2*` | `( n -- 2n )` | Arithmetic left shift by one |
| `$01AB` | `_2slash` | `2/` | `( n -- n/2 )` | Arithmetic right shift by one |
| `$01B3` | `_ABS` | `ABS` | `( n -- |n| )` | Signed absolute value |
| `$01C3` | `_Bat_inc7` | `B@+7` | `( address -- address+1 byte )` | Fetch byte, clear bit 7, and advance the address |
| `$01CF` | `_equal` | `=` | `( m n -- flag )` | Signed or unsigned equality |
| `$01DE` | `_zeroequal` | `0=` | `( n -- flag )` | True when zero |
| `$01E3` | `_NOT` | `NOT` | `( n -- flag )` | Alias of `0=` |
| `$01E5` | `_not_equal` | `<>` | `( m n -- flag )` | True when unequal |
| `$01F4` | `_0notequal` | `0<>` | `( n -- flag )` | True when nonzero |
| `$01F9` | `_Uless` | `U<` | `( m n -- flag )` | Unsigned less-than |
| `$0208` | `_less` | `<` | `( m n -- flag )` | Signed less-than |
| `$021C` | `_gt` | `>` | `( m n -- flag )` | Signed greater-than |
| `$0220` | `_0less` | `0<` | `( n -- flag )` | True when negative |
| `$0225` | `_0gt` | `0>` | `( n -- flag )` | True when positive and nonzero |
| `$022A` | `_gt_equal` | `>=` | `( m n -- flag )` | Signed greater-than-or-equal |
| `$023E` | `_0gtequal` | `0>=` | `( n -- flag )` | True when nonnegative |
| `$0243` | `_less_equal` | `<=` | `( m n -- flag )` | Signed less-than-or-equal |
| `$0247` | `_0lessequal` | `0<=` | `( n -- flag )` | True when nonpositive |
| `$024C` | `_minusDUP` | `-DUP` | `( n -- n [n] )` | Duplicate only a nonzero value |
| `$0256` | `_XOR` | `XOR` | `( m n -- result )` | Bitwise exclusive OR |
| `$0261` | `_BMOVE` | `BMOVE` | `( source destination count -- )` | Copy bytes with `LDIR` |
| `$026F` | `_DO` | `DO` | `( limit start -- )` | Create a six-byte IX loop frame |
| `$028A` | `_LOOP` | `LOOP` | `( -- )` | Increment the loop index and repeat or discard the frame |
| `$02B8` | `_I` | `I` | `( -- index )` | Push the innermost loop index |
| `$02C1` | `_J` | `J` | `( -- index )` | Push the next outer loop index |
| `$02CA` | `_OVER` | `OVER` | `( m n -- m n m )` | Copy the second cell to the top |
| `$02D1` | `_SWAB` | `SWAB` | `( n -- n' )` | Exchange high and low bytes |
| `$02D8` | `_OUTP` | `OUTP` | `( value port -- )` | Write the low value byte to a 16-bit Z80 port address |
| `$02E0` | `_INP` | `INP` | `( port -- value )` | Read and zero-extend one port byte |
| `$02EA` | `_ROT` | `ROT` | `( m n p -- n p m )` | Rotate the top three cells |
| `$02F1` | `_PICK` | `PICK` | `( ... n -- ... value )` | Copy the selected deeper cell |
| `$02FB` | `_2DROP` | `2DROP` | `( m n -- )` | Discard two cells |
| `$02FF` | `_star` | `*` | `( m n -- product )` | 16-bit multiply; low 16 bits are retained |
| `$0378` | `_slashMOD` | `/MOD` | `( dividend divisor -- remainder quotient )` | Signed division |
| `$0383` | `_MOD` | `MOD` | `( dividend divisor -- remainder )` | Signed remainder |
| `$038D` | `_slash` | `/` | `( dividend divisor -- quotient )` | Signed quotient |
| `$0397` | `_plusLOOP` | `+LOOP` | `( increment -- )` | Advance loop index by a signed increment |
| `$03E2` | `_BRANCH` | `BRANCH` | `( -- )` | Load BC from the following inline address |
| `$03EA` | `_0BRANCH` | `0BRANCH` | `( flag -- )` | Branch through the inline address when flag is zero |
| `$03F7` | `_LEAVE` | `LEAVE` | `( -- )` | Force termination of the current DO loop |
| `$0405` | `_Aquote` | `A"` | `( -- address )` | Push an inline counted-string address and skip its bytes |
| `$0410` | `_OF` | `OF` | `( selector test -- selector | )` | Match one CASE arm or branch to the next arm |
| `$0425` | `_MAX` | `MAX` | `( m n -- maximum )` | Leave the greater signed value |
| `$0436` | `_CASES` | `CASES` | `( index -- )` | Dispatch through a bounded inline execution-address table |

All comparison flags are canonical TERSE booleans: false is `$0000` and true
is `$0001`.

## Stack-frame words

The frame pointer is stored at `$FEFD`. Opening a frame saves its previous
value on the parameter stack, records the new SP, and allocates local cells.
Closing a frame restores the saved pointer and discards parameters and locals.

| Address | Word | Stack effect |
| ---: | --- | --- |
| `$0465` | `0<FRAME` | `( -- frame )` |
| `$046F` | `1<FRAME` | `( -- frame local1 )` |
| `$0474` | `2<FRAME` | `( -- frame local1 local2 )` |
| `$0486` | `0FRAME>` | `( frame -- )` |
| `$048B` | `1FRAME>` | `( frame parameter1 -- )` |
| `$0490` | `2FRAME>` | `( frame parameter1 parameter2 -- )` |
| `$049C` | `1PARAM` | `( -- address )` |
| `$04A2` | `2PARAM` | `( -- address )` |
| `$04A8` | `3PARAM` | `( -- address )` |
| `$04AD` | `1LOCAL` | `( -- address )` |
| `$04B2` | `2LOCAL` | `( -- address )` |
| `$04C1` | `1LOCAL@` | `( -- value )` |
| `$04C6` | `2LOCAL@` | `( -- value )` |
| `$04CB` | `3PARAM@` | `( -- value )` |
| `$04D0` | `1PARAM@` | `( -- value )` |
| `$04D6` | `2PARAM@` | `( -- value )` |

## Memory-update words

The store layer transparently handles the board's protected-memory aperture.
Addresses below `$E200` are written through unlock port `$5B`; addresses at or
above `$E200` use ordinary Z80 stores. Interrupts remain disabled for the
complete write and are re-enabled before threaded dispatch resumes.

| Address | Word | Stack effect | Operation |
| ---: | --- | --- | --- |
| `$0532` | `SB!` | `( address value -- )` | Byte store with reversed operands |
| `$053A` | `BONE` | `( address -- )` | Store byte one |
| `$053F` | `BZERO` | `( address -- )` | Store byte zero |
| `$0544` | `1-B!` | `( address -- )` | Decrement byte |
| `$0549` | `1+B!` | `( address -- )` | Increment byte |
| `$054E` | `+B!` | `( value address -- )` | Add to byte |
| `$0555` | `-B!` | `( value address -- )` | Subtract from byte |
| `$055C` | `B!` | `( value address -- )` | Store byte |
| `$0561` | `!` | `( value address -- )` | Store word |
| `$0569` | `ZERO` | `( address -- )` | Store word zero |
| `$056F` | `ONE` | `( address -- )` | Store word one |
| `$0575` | `1-!` | `( address -- )` | Decrement word |
| `$057D` | `+!` | `( value address -- )` | Add to word |
| `$0588` | `1+!` | `( address -- )` | Increment word |
| `$0590` | `-!` | `( value address -- )` | Subtract from word |
| `$059E` | `S!` | `( address value -- )` | Word store with reversed operands |
| `$05A3` | `MOVE` | `( source destination count -- )` | Copy 16-bit cells through the protected store layer |

## Cross-game lineage

Professor Pac-Man and Gorf share the same direct-threaded ABI and foundational
dictionary organization. From `_RETURN` through `_Aquote`, Professor Pac-Man
keeps the Gorf ordering and most native instruction bodies, removes unused
words, and supplies native implementations for several Gorf colon definitions,
including `MAX`, `MOD`, and `/`. Surviving Robby Roto TERSE source confirms the
same mature source forms—colon definitions, `CODE` words, `SUBR` helpers,
frames, arrays, and stack notation—without implying that its game vocabulary
is resident in Professor Pac-Man.

Sea Wolf II uses the same direct-threaded model—BC instruction pointer, SP
parameter stack, IX control stack, and IY continuation—but carries only eleven
resident kernel words. Its return runtime, `LIT`, `B@`, `B!`, `0BRANCH`, and
`BRANCH` operations are direct ancestors or semantic counterparts of the later
Professor Pac-Man vocabulary. The Sea Wolf II word at `$0081` pushes `$FFFF`,
but its sole threaded caller stores the low byte as an active state value; the
ROM does not establish a canonical `TRUE` word. Professor Pac-Man's comparison
primitives unambiguously produce TERSE Boolean `$0001`.

This establishes common TERSE architecture across all three games while
distinguishing the compact 1978 Sea Wolf II kernel from the larger Gorf and
Professor Pac-Man dictionaries.


## Newly reconstructed sound-control words (2026-11-01)

The source RE pass decoded two previously byte-defined fixed-ROM TERSE
definitions and followed their configuration-0 callers. The execution tokens
below are **addresses in the production ROM**, not new commands added to the
historical TERSE language.

| Word / CPU address | Stack / operation | Implementation |
| --- | --- | --- |
| `SOUND_UPDATE_STATE_F6E2` `$3D67` | Uses a supplied pattern/state value; writes cached audio state through `$F6E2` | Fixed-ROM TERSE colon definition (128 bytes) |
| `SOUND_UPDATE_STATE_F6E0` `$3DE7` | Uses a supplied pattern/state value; writes cached audio state through `$F6E0` | Fixed-ROM TERSE colon definition (140 bytes) |
| `SOUND_UPDATE_BOTH_CHANNEL_STATES` `$82E0` | `( pattern -- )` duplicates the argument and invokes both fixed-ROM words | Configuration-0 TERSE colon definition |
| `SOUND_APPLY_PATTERN_818C` `$82E9` | `( -- )` provides a pointer to `$818C` and invokes the paired updater | Configuration-0 TERSE colon definition |
| `SOUND_APPLY_PATTERN_82D6` `$8302` | `( -- )` provides `$82D6` and invokes the paired updater | Configuration-0 TERSE colon definition |
| `SOUND_APPLY_PATTERN_82F8` `$830B` | `( -- )` provides `$82F8` and invokes the paired updater | Configuration-0 TERSE colon definition |
| `SOUND_APPLY_PATTERN_8414` `$841E` | `( -- )` provides `$8414` and invokes the paired updater | Configuration-0 TERSE colon definition |

The fixed-ROM words use the indexed sound-port writer at `$2AE1` and the
sound-state helper at `$2B8C`. Their decoding includes in-line literals,
conditional branches, native execution tokens, and terminating `RETURN`.
Branch targets have verified cell boundaries.

The sound-register native layer at `$2AF2`–`$2B71` now has named writers
for offsets 1–8 and a paired/triple writer sequence. This makes the
formerly incomplete `$3D67` and `$3DE7` references in `pps3` traceable
through the hardware writer, target state, and source data.

Further analysis should associate particular pattern records and audio
register bitfields with game cues; the present word names encode proven
data-flow roles without inventing sound-effect names.


### Sound setup and native state words

| Word / CPU address | Stack / role | Implementation |
| --- | --- | --- |
| `SOUND_SETUP_CHANNEL_FD6D` `$2C00` | Initialize/refresh cached state with pointer `$FD6D` | Fixed-ROM colon word |
| `SOUND_SETUP_CHANNEL_FD3D` `$2C0D` | Initialize/refresh cached state with pointer `$FD3D` | Fixed-ROM colon word |
| `SOUND_SETUP_BOTH_CHANNELS` `$2C1A` | Execute common initialization and both channel setup words | Fixed-ROM colon word |
| `SOUND_RECORD_CHANNEL_STATE` `$2BEF` | Consume channel state operands, call bounds helper, restore threaded IP | Native TERSE word |
| `SOUND_UPDATE_CHANNEL_BOUNDS` `$2BCE` | Compare value against cached threshold and update channel-state fields | Native helper |
