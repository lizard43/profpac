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


## Stage 3 — configuration-1 game-action words (2026-11-01)

These words are distinct from the core resident TERSE vocabulary. They are
executable application definitions in the banked PPS8 ROM; their names are
reconstructed from the action-list scheduler and decoded control flow.

| Name | Address | TERSE form | Known caller / action list | Stack effect |
| --- | --- | --- | --- | --- |
| `ATTRACT_SCREEN_ACTION_ENTRY` | `$AFF1` | 113-cell colon word | `ATTRACT_SCREEN_ACTIONS` at `$B4F2` | To be traced through renderer calls |
| `ATTRACT_DEMO_STAGE_ENTRY` | `$B41C` | Shared-entry colon word | First action, `$B4F5` | Shared exit; analysis pending |
| `ATTRACT_DEMO_SHARED_CONTINUATION` | `$B465` | Shared-entry colon word | Overlaps first/second demo action | Shared exit; analysis pending |
| `ATTRACT_DEMO_SECOND_ACTION` | `$B499` | Shared-entry colon word | Second action, `$B4F5` | Shared exit; analysis pending |
| `ATTRACT_DEMO_THIRD_ACTION` | `$B4C5` | 17-cell colon word | Third action, `$B4F5` | To be traced |
| `ATTRACT_PROMPT_STAGE_ENTRY` | `$B613` | 15-cell colon word | First action, `$B6C2` | To be traced |
| `ATTRACT_PROMPT_SECOND_ACTION` | `$B642` | 23-cell colon word | Second action, `$B6C2` | To be traced |
| `ATTRACT_PROMPT_THIRD_ACTION` | `$B67F` | 25-cell colon word | Third action, `$B6C2` | To be traced |
| `CREDIT_PROMPT_STAGE_ENTRY` | `$B846` | 37-cell colon word | `CREDIT_START_PROMPT_ACTIONS` at `$B8B1` | To be traced |

Six of these words have been expanded from `DB` to explicit execution
tokens, literals and branches without changing emitted ROM bytes. The shared
entries remain address-exact in a single physical source image.

For the wider shared control-flow and state-update families
(`$BA31–$BBA6`, `$BBE8–$BCDA`), see
[the stage 3 multi-entry analysis](SHARED-TERSE-ENTRYPOINTS.md). The
standalone Node.js analyzer can derive a table from the original ROM
with `node tools/analyze_shared_threads.js --markdown`.

No stack effects are assigned without a complete caller/callee trace; that
is the next semantic reconstruction task.


## Stage 4 shared game-state vocabulary (2026-11-01)

These are address-linked application words in PPS8 configuration 1. The labels
describe verified memory access and call structure, not claimed historical
TERSE source spellings.

| Entry | Name | Implementation / stack status | Caller or memory reference |
| --- | --- | --- | --- |
| $BA31 | GAME_STATE_WORD_TRANSFER_BA31 | Shared colon path; stack effect pending | CORRECT_FEEDBACK_TASK at $BBCE; word access $F716/$F718/$F71A/$F71C |
| $BACD | GAME_STATE_SHARED_ENTRY_BACD | Shared colon path; stack effect pending | Backward branch into shared path at $BA79 |
| $BAD9 | GAME_STATE_SHARED_ENTRY_BAD9 | Shared colon path; stack effect pending | Reads/writes state-word quartet |
| $BAED | GAME_STATE_SHARED_ENTRY_BAED | Shared colon path; stack effect pending | Reads/writes state-word quartet |
| $BB27 | GAME_STATE_SHARED_ENTRY_BB27 | Shared colon path; stack effect pending | Reads/writes state-word quartet |
| $BB68 | GAME_STATE_SHARED_ENTRY_BB68 | Shared colon path; stack effect pending | Reads/writes state-word quartet |
| $BBE8 | GAME_STATE_APPLICATION_INIT_BBE8 | Shared colon path; stack effect pending | MAIN_APPLICATION at $BEE2; uses $F716/$F718/$F71C |
| $BC83 | GAME_STATE_CONTINUATION_BC83 | Shared colon continuation; stack effect pending | Rejoins $BBE8 branch path; uses $F716/$F71C |
| $BC8F | GAME_STATE_CONTINUATION_BC8F | Shared colon continuation; stack effect pending | Rejoins $BBE8 branch path; writes $F716/$F71C |
| $BBB8 | CORRECT_FEEDBACK_TASK | Colon word; stack effect pending | Embedded "correct" text, $F758 state, calls $BA31 |

See [Stage 4 shared game-state RE](STAGE4-SHARED-GAME-STATE.md).
Run node tools/analyze_shared_threads.js --state --check-sources for a
reproducible RAM-literal and next-memory-operation inventory.


## Stage 5 — physical shared-state tokens

The configuration-1 PPS8 multi-entry streams `$BA31–$BBA6` and `$BBE8–$BCDA` now expose 184 byte-preserving symbolic TERSE token cells in `src/pps8.asm`, with unmatched or overlapping boundary bytes retained as raw data. Both families together reach 232 distinct token start addresses, including 33 distinct physical literal references to `$F6EB/$F716/$F718/$F71A/$F71C`. The read/write and address-only distinctions are enumerated in [the physical trace](STAGE5-PHYSICAL-TRACE.md). The primitive `XT_LIT` pushes a literal; `XT_at` fetches a word; `XT_bang` stores a word; `XT_Bat` fetches a byte; `XT_BZERO` clears a byte. A `LIT` followed by `DUP` is an address duplication, not a direct memory operation. Compound-word stack effects remain undefined until all external object/task token contracts are reconstructed.

## Fixed-ROM object vocabulary: recovered stack contracts

The Stage 5 state threads invoke PPS1's object setter/getter words. Inspection of their native Z80 bodies supplies actual stack effects:

| PPS1 execution address | Word / implementation | Proven stack effect | Implementation evidence |
| --- | --- | --- | --- |
| `$1D24` | Object value-1 setter | `( value1 -- )` | `POP HL`, convert via `$1B3C`, write record `+25/+26` |
| `$1D3C` | Object value-2 setter | `( value2 -- )` | `POP HL`, convert via `$1B9E`, write record `+27/+28` |
| `$1D54` | TERSE paired setter | `( value1 value2 -- )` | Executes `$1D3C`, then `$1D24`, then `RETURN` |
| `$1D9B` | Object value-1 getter | `( object-record -- value1 )` | `POP HL` record pointer, read `+25/+26`, transform, `PUSH HL` |
| `$1DAA` | Object value-2 getter | `( object-record -- value2 )` | `POP HL` record pointer, read `+27/+28`, transform, `PUSH HL` |
| `$1E7D` | Object byte-18 setter | `( byte -- )` | `POP DE`, write E to current record `+24` |
| `$1E8E` | Object word-1D setter | `( word -- )` | `POP DE`, write E/D to current record `+29/+30` |

These seven effects are recorded in the WB/ICEBOX current **platform dictionary**, and the `$1D54` compound effect is also present in the program-word dictionary. Naming and inline function headers were added to the original `src/pps1.asm`, with the ICEBOX project copy synchronized. This proves the object-state transformation called by the shared animation threads; it does **not** automatically establish the entire task-entry word's stack contract.


## Recovered animation-axis semantics and display hardware

Four original PPS1 native routines operate on two presentation-axis words in the active object record:

| Native XT | Data stack | Object offset | Mechanism |
| --- | --- | --- | --- |
| `$1C5F` `XT_SET_CURRENT_OBJECT_AXIS_A` | `( axisA -- )` | `+$34/+$35` | Convert via `$1B3C` then store |
| `$1C71` `XT_SET_CURRENT_OBJECT_AXIS_B` | `( axisB -- )` | `+$36/+$37` | Convert via `$1B9E` then store |
| `$1C96` `XT_GET_OBJECT_AXIS_A` | `( object-record -- axisA )` | `+$34/+$35` | Read and convert via `$1B60` |
| `$1CA5` `XT_GET_OBJECT_AXIS_B` | `( object-record -- axisB )` | `+$36/+$37` | Read and convert via `$1BB3` |

The two true PPS8 root words compare object axes with these work-RAM targets and use per-axis steps to interpolate their presentation state:

| RAM | Established role | Evidence |
| --- | --- | --- |
| `$F716` | Axis-B terminal target | Compared with `XT_GET_OBJECT_AXIS_B` at `$BA81/$BC3F` |
| `$F718` | Axis-A terminal target | Compared with `XT_GET_OBJECT_AXIS_A` at `$BABD/$BC7B` |
| `$F71A` | Feedback axis-B motion step | Read at `$BA91`, doubled and applied by `XT_SET_CURRENT_OBJECT_AXIS_B` |
| `$F71C` | Feedback axis-A step and application shared step | Read at `$BAAA/$BC4F/$BC68`, doubled before corresponding axis setters |
| `$F6EB` | Feedback animation phase counter | Zeroed at `$BA51`, incremented at `$BAE7`, checked against 1, 2, 3, and terminal 4 |

The A/B axes correspond to two native presentation dimensions. Their mapping to the visible screen's horizontal and vertical directions is intentionally not invented.

**Graphics I/O rather than sound:** PPS1 `XT_OUTP` (`$02D8`) pops the port into BC and value into HL before `OUT (C),L`. Thus `$BBC2` outputs `$15` to `PORT_SCREEN_PAGE $BF`, `$BBF2` outputs `$2A` to the same port, and `$BCD3` outputs `$00`. These are **screen-page operations**, not writes to the audio ports. The normal application calls the genuine PPS2 `SCREEN_INTERCEPT_ACTION_2D2B` (`$BBF4`), whose native `$2D08` implementation writes `PORT_SCREEN_INTERCEPT $C3` and `PORT_SCREEN_WRITE_MASK $C5`. The tail calls the PPS2 glyph-refresh native XT `$2083`, which delegates to the fixed-ROM glyph routine `$1FC4`. These establish the display/drawing path from the animated state words; any sound response is outside these immediate calls.

**Current runtime inventory:** `v20261102-0006`, one package per library, **100 native-root, 52 platform, 436 program-colon and 130 question-initializer words**. The extra program colon `$2D2B` is a true original `RST $08` action recovered during the Stage 5 graphics trace. There are no historical Professor Pac-Man runtime packages to preserve.

**Independent original-ROM acceptance:** the original `profpac.zip` archive SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c` and each of the 23 program/question ROM SHA-1s were checked against the library manifest; the reconstructed **617 PPS8 bytes (including both colon entry opcodes)** were compared directly against original PPS8 with zero mismatches. New `tools/verify_stage5_rom.js` makes this check reproducible, additionally validating the 16 decoded bytes of PPS2's `$2D2B` screen action. The complete zmac-produced ROM/ZIP rebuild is separately required and is invoked by `./build.sh --clean`, which now runs the Stage 5 checks.

