# Stage 5 — scheduler-aware stack and full-ROM hardware audit

Date: 2026-11-02. Targets: PPS8 animation roots `$BA31` and `$BBE8`; original program/query ROM ZIP; PPS1 task runtime.

## The scheduler changes the stack contract

Both state words begin with `XT_ENTER_ACTION_TASK` (`$1599`). This is **not** an ordinary colon call whose entire effect can be written as a conventional fixed `( x -- y )` contract. The native task controller uses the Z80 parameter stack (`SP`), continuation (`IY`), return/control stack (`IX`) and threaded instruction pointer (`BC`) directly.

| Native address | Recovered operation | Consequence |
| --- | --- | --- |
| `$1599` | `EX (SP),IY` | Exchange the data-stack top with the current continuation; task-context reference becomes IY |
| `$159B–$159E` | `LD (IY+1),B`; `LD (IY+0),C` | Save the current threaded instruction pointer into task record offsets +0/+1 |
| `$15A1–$15B6` | Test task flags; optionally invoke `$0D4A`; set task frame offset +10 | Task state/priority-dependent scheduler bookkeeping |
| `$15B9–$15C4` | Clear task flag 3, set flags 1 and 0 | Mark active task continuation |
| `$15C5–$15D1` | Compare current IY task pointer with `($FE8F)` | Select task-switch versus normal continuation |
| `$15D2–$15D8` | Call `$0D4A`, discard one stack word, `JP $157E` | Nonlocal scheduler transfer, not a conventional TERSE return |
| `$15D9–$15E6` | `POP IY`, pop next BC from `(IX)`, advance IX by two, `JP (IY)` | Resume saved threaded execution/control continuation |

**Operational stack contract of `XT_ENTER_ACTION_TASK`:** it expects a task-context pointer on the parameter-stack top; swaps that word with `IY`, stores BC in the task record, and selects one of the two continuations. On the resume path, it consumes the saved IY stack word and advances IX. On the scheduling path it transfers control to the task scheduler, whose stack and task-record state is managed by the scheduler rather than the caller. Both physical paths and their data/control-stack changes are now documented in `src/pps1.asm`.

**Operational contracts of the two task roots:** `$BA31` and `$BBE8` are task-entry words, not normal leaf functions. Their first action is the scheduler transition above. Once active, their branch graphs perform zero/one-value field mutation, axis projection and object drawing; their final `XT_RETURN` belongs to the task's resumed execution context. A single unconditional net input/output count for the *whole* task invocation would conflate two different task contexts. For this reason the formal Forth-style `stackEffect` field stays **null**, and the library records a **conditional `taskControlContract` object** instead. This is a precise representation of the available native ABI, not an assertion that the two task words are ordinary `( -- )` calls.

The graphics subpath `$1B2C` executes `CALL $1AC3; PUSH HL; JP (IY)`, putting one computed value on the parameter stack; `$BA79/$BC37` immediately executes `DROP` before entering the screen-drawing helper `$25BB`. PPS1 contains both the named native routine and the byte-exact code.

## Proven animation state and direct RAM references

| RAM | Role | Direct consumer/producer evidence |
| --- | --- | --- |
| `$F716` | Axis-B terminal target | `$BA85/$BC43` fetch vs current-object axis-B getter `$1CA5`; also set by two task presets |
| `$F718` | Axis-A terminal target | `$BABF/$BC7D` fetch vs current-object axis-A getter `$1C96` |
| `$F71A` | Feedback axis-B step | `$BA91` fetch doubled and passed to axis-B setter `$1C71` |
| `$F71C` | Axis-A/common step | `$BAAA/$BC4F/$BC68` fetch doubled before object setter |
| `$F6EB` | Feedback phase counter | `$BA51` zero, `$BAE7` increment, then phase comparisons 1, 2, 3 and exit 4 |

The [33 physical direct LIT sites](STAGE5-PHYSICAL-TRACE.md) are backed by the [232-cell control-flow trace](STAGE5-TOKEN-MAP.md) and original ROM hashes. The new `tools/audit_stage5_full.js` scans **every byte of all 23 original program and question ROMs** for little-endian `LIT $F6EB/$F716/$F718/$F71A/$F71C` signatures, and reports every possible literal occurrence with its ROM and physical bank-relative offset. Only branch-decoded PPS8 sites are classified as confirmed accesses. All other binary matches are *candidates*, since a four-byte signature in graphics/data is not automatically executable. Computed-indirect addresses cannot be established by a literal signature scan alone.

## Sound and display classification

The correct-feedback task `$BBB8` calls `$34B1` (configuration/graphics preparation), outputs `$15` to **screen-page port `$BF`** at `$BBC2`, then calls the `$BA31` animation task. `$34B1` calls the fixed-ROM setup task `$2645`; the setup path contains output to video mode/vertical ports `$08/$0A` and has an input read through native `$1F4B`, not a direct sound-register write.

The application animation task `$BBE8` outputs `$2A` to screen-page port `$BF` at `$BBF2` and `$00` to the same port at `$BCD3`. Its `$2D2B` call reaches the masked-screen drawing native word `$2D08` (`PORT_SCREEN_INTERCEPT $C3` and `PORT_SCREEN_WRITE_MASK $C5`). Later, `$2083` refreshes the glyph via fixed-ROM `$1FC4`. These are **graphics**, not sound I/O. The branch-decoded TERSE paths of these two roots and the immediate correct-feedback caller contain **no direct `OUTP` to ports `$10` or `$50`**. Other game/application paths can have independent sound behavior; that is outside these immediate state-path calls.

## Reproducible acceptance

```sh
node tools/verify_stage5_rom.js
node tools/audit_stage5_full.js
node tools/analyze_shared_threads.js --state-check --check-sources
./build.sh --clean
```

The original ZIP and its 23 component ROM hashes were directly checked in the analysis environment. The 615-body-byte PPS8 reconstruction and the two real `RST $08` root bytes were compared with original PPS8, with no mismatches. The original-byte checker also asserts the native scheduler signature, two caller cells, seven false RST markers, and the PPS2 masked-screen colon. The Node checks are integrated in `build.sh`, but a successful *local* zmac output/repack and the WB/ICEBOX runtime suites still require a runnable full checkout. Do not report those as passed without command output.

## Proven body-level stack effects (all 232 ROM execution cells)

The branch-aware original-ROM stack simulation establishes the **complete deterministic data-stack effect of each task body after the native scheduler transition**:

| Genuine task word | Executed token starts | Branch and loop joins | Data-stack underflows | Normal RETURN delta |
| --- | ---: | --- | ---: | ---: |
| `CORRECT_FEEDBACK_AXIS_ANIMATION` `$BA31` | 140 | All consistent | 0 | 0 |
| `MAIN_APPLICATION_AXIS_ANIMATION` `$BBE8` | 92 | All consistent, including DO/LOOP | 0 | 0 |

Thus both post-scheduler bodies have `( -- )` stack contracts. The *whole* task-entry contract is `task-context exchange → {resume | nonlocal scheduler transfer} → balanced animation body on resume`. A single unconditional numerical input/output contract across a task switch is not meaningful. The primary WB and ICEBOX game dictionaries now contain both `stage5.postSchedulerStackEffect` and the two-path `taskControlContract`; they deliberately retain `stackEffect: null` for whole task invocations.

The proof uses the original PPS8 instruction-cell decoder and the *actual native* root effect of `XT_MINUS` `$0168`: `( n -- -n )`, **zero stack-depth change**, distinct from binary subtraction `XT_minussign` `$0160`: `( a b -- a-b )`. Mistaking these two words for one another produces false stack underflows and inconsistent joins. Source: `tools/audit_stage5_stack.js`, replayed with its 232 address-decoded original-ROM cells; both roots returned `0` at all verified exits.

The native masked renderer `$25BB` begins with `DI, PUSH BC, PUSH IY`, and saves/restores its CPU registers before returning; its data-stack effect is `( -- )`. The source producer `$1B2C` pushes one computed value, which the immediately following `DROP` consumes.
