# Professor Pac-Man Stage 5 — acceptance record

Date: 2026-11-02. Working runtime revision: `v20261102-0007`.

## Executed validations

| Acceptance item | Result | What was executed |
| --- | --- | --- |
| Original MAME `profpac.zip` SHA-1 | **PASS** | SHA-1 `fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c` against the actual source archive |
| All nine PPS and fourteen PPQ original images | **PASS** | Full SHA-1 comparisons against the 23 expected original ROM hashes |
| Stage 5 PPS8 physical stream | **PASS** | Both genuine colon entries and their 615-byte payloads: 617 bytes compared with original PPS8, zero mismatches |
| PPS2 screen intercept colon at `$2D2B` | **PASS** | 16 original ROM bytes compared with symbolic source |
| Seven previously false PPS8 colon markers | **PASS** | All seven equal `XT_equal` (`$01CF`) |
| Two native caller cells | **PASS** | `$BBCE→$BA31`, `$BEE2→$BBE8` |
| Scheduler and native renderer signature | **PASS** | PPS1 `$1599/$15D9`, PPS1 `$1B2C` and PPS2 `$25BB` original bytes |
| `tools/audit_stage5_full.js` | **PASS in isolated JS replay** | Executed the actual script logic against the original ZIP, using V8-compatible filesystem, DEFLATE and SHA-1 adapters |
| `tools/verify_stage5_rom.js` | **PASS in isolated JS replay** | Executed the actual script logic against the original ZIP using the same adapters |
| WB `tools/verify-profpac-library.mjs` | **PASS in isolated JS replay** | Executed its default in-memory validation logic with the actual 8 KB PPS1 component and current manifests; no ZIP argument |
| ICEBOX `tests/profpac-extracted-runtime-test.mjs` | **4 / 4 callbacks PASS in isolated JS replay** | Executed the four actual test bodies using equivalent assertions, the current JS runtime catalog and source artifacts |
| WB/ICEBOX six JSON layers | **PASS** | Exact blob comparisons of `runtime`, `compatibility`, root, platform, game and question dictionaries |
| ICEBOX source mirrors | **PASS** | Exact source comparisons for PPS1, PPS2, PPS8, and `profpac_common.include` |

These isolated script executions test application assertions and original data, but **are not equivalent to a native Node.js CLI invocation**. Their surrounding Node filesystem/crypto/zlib/test APIs were substituted with compatible V8 adapters because direct GitHub checkout and network access are unavailable in this execution environment. Do not describe the native scripts as run from a local checkout.

## Native execution unavailable here

| Required native command | Status |
| --- | --- |
| `node tools/verify_stage5_rom.js` in the actual checkout | Not run natively |
| `node tools/audit_stage5_full.js` in the actual checkout | Not run natively |
| `./build.sh --clean` with the repo's `tools/zmac` | **Not run** |
| Actual assembly of 23 ROMs and original-byte comparison | **Not run** |
| Regenerated TorrentZIP byte-for-byte comparison | **Not run** |
| `node tools/verify-profpac-library.mjs /path/to/profpac.zip` | Not run natively with ZIP argument |
| `node --test tests/profpac-extracted-runtime-test.mjs` | Not run natively |

The checkout is not present on the local execution host, GitHub access is available only through its repository connector, external GitHub DNS is blocked, and zmac is not installed on the host. No GitHub Actions or artificial “green” workflow was created.

## Required completion gate

Run the following in fully checked-out repositories before merging:

```sh
# profpac
node tools/verify_stage5_rom.js
node tools/audit_stage5_full.js
node tools/analyze_shared_threads.js --state-check --check-sources
./build.sh --clean

# dnaTERSE-WB
node tools/verify-profpac-library.mjs /path/to/profpac.zip

# dnaIceBox
node --test tests/profpac-extracted-runtime-test.mjs
```

`./build.sh --clean` contains zmac assembly of all 23 game/question ROMs, original SHA-1 and byte comparisons, complete TorrentZIP reconstruction/equality, and the Stage 5 source and graphics checks. A successful exit from these **native** commands is the remaining release acceptance condition.

## Stack ABI and semantic boundary

See [the scheduler-aware operational stack contract](STAGE5-STACK-HARDWARE-AUDIT.md). The two PPS8 application task words have an explicit two-branch task-context contract rather than a fabricated unconditional Forth data-stack delta. The native draw producer and balanced renderer have individually characterized stack effects. The full direct-address signature scan covers all 23 original ROMs; computed address and runtime indirect accesses require execution traces or whole-program pointer analysis for an absolute exhaustive claim.
