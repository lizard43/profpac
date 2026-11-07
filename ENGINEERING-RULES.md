# ENGINEERING RULES — MANDATORY

**Original software first; no unauthorized substitutions.** Use original source, language, interpreter, native cross-compiler (XC), runtime, DATA, algorithms and control flow wherever available. If an original method is difficult, investigate the original method; do not substitute a convenient implementation.

1. **Source is authoritative.** Preserve source-defined gameplay and behavior. Adapt only essential target hardware interfaces in native assembly or an explicitly approved mechanism.
2. **Native compiler owns syntax.** For TERSE, feed complete original-style source/screen files through the original TERSE loader/interpreter and DNA XC. TERSE defines compilation order, dictionary, target allocation and word boundaries.
3. **Host-tool boundary.** JavaScript, Node.js, Python and shell may launch original tools, transport source blocks unchanged, package native output, hash and independently verify. They must NOT parse/reconstruct TERSE definitions or DATA, invent dictionary/word maps, assign compiled-word addresses, translate/reimplement gameplay, synthesize source semantics or rewrite XC execution tokens.
4. **No shortcuts.** Before any architecture/toolchain deviation, STOP, document the precise original-method obstacle and alternatives, and obtain explicit user authorization. No silent workaround even if it passes tests.
5. **Verified progress only.** Distinguish source audit, native XC build, ROM integrity, MAME execution and physical testing. Never claim a stage complete or tests passed without actual execution evidence.
6. **Documentation.** Project README describes the project/build/architecture, not a progress log. Use docs/SPRINT-PLAN.md for approved staged work, docs/TECHNICAL-DEBT.md for issues/deviations and closure evidence.
7. **PR gate.** Each engineering PR identifies original source/toolchain, exact source changes, hardware adaptations, approval for deviations, native build and target execution evidence. Passing tests cannot waive the rules.

These are enforceable stop-work instructions, not preferences. Existing original artifacts and previous approved work must be preserved. The rules apply to every developer and coding assistant.
