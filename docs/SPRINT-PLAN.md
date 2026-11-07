# Sprint plan — original software engineering gate

This is the initial policy stage plan, not a replacement for work on other branches.

1. Inventory original source, language, compiler/interpreter/XC and runtime for the target.
2. Recover a complete original-style native load/compile session; do not parse or compile source definitions with host tooling.
3. Trace and preserve original program DATA, words, and control flow.
4. Implement only hardware-required adaptations after documenting their original source and target API.
5. Run the actual original compiler, ROM byte checks and target execution separately; keep evidence.
6. Move outstanding issues and every approved deviation to [TECHNICAL-DEBT.md](TECHNICAL-DEBT.md).

No feature stage advances across an unapproved architectural deviation. See [ENGINEERING-RULES.md](../ENGINEERING-RULES.md).
