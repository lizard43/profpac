# Archived reference material

These original reference documents were retained from the earlier offline Professor Pac-Man reverse-engineering workspace.

- `DNA_TERSE_Evolution_and_Architecture_Illustrated-20260904.docx` — historical TERSE evolution document (two identical copies existed in `temp/`).
- `astrocade_arcade_story-20260904.docx` — historical Astrocade arcade story document.
- `IBS_AP22_Z80_Accelerator_N82S153A.pdf` — accelerator-card / programmable-logic reference.
- `Programmable_Logic_Devices_in_MAME.mht` — archived MAME programmable-logic reference.

The dated `temp/` source, analyzer, and Markdown work-in-progress snapshots were removed from the active tree as superseded, not erased from Git history. Current maintained sources live in `src/`, analyzers in `tools/`, and technical documentation in `docs/`. The latest self-test reference was restored as `docs/self_test.md`.

The known outstanding code dependency is `tools/analyze_question_banks.py`, imported by `tools/analyze_question_families.py`. The complete ROM build has not yet been validated.
