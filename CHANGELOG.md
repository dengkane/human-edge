# Changelog

What shipped, and when. One entry per chapter or infrastructure change.

The workflow requires a chapter's entry to be written before it publishes — see
[WORKFLOW.md](WORKFLOW.md#updating-the-index-and-changelog).
`scripts/publish-chapter.sh` stages this file alongside the chapter when it has uncommitted changes,
and warns if a new chapter arrives without one.

---

## Unreleased

### Added

- Repository scaffolding: `AGENTS.md`, `WORKFLOW.md`, `chapters/{en,zh}/README.md`, research-note
  standards, the `scripts/` publishing toolchain, and the chapter and research-note templates.
  Adapted from a comparable book project and re-pointed at this one's ten-chapter structure.

### Changed

- Chapter directory settled as `chapters/` (`book/` was dropped before any chapter existed), so the
  tooling and the documentation agree.
- Homepages now state that **all ten chapters are open source**; the paid tier is the Premium Pack
  rather than a set of withheld chapters.
- **Outline revised before anything was written** (no chapter file existed, so no number had shipped):
  - Ch. 03 *Prompting as Thinking* moved from Part II to open Part III. Part II had four capabilities
    against Ch. 02's promise of three blind spots, and prompting is the interface *with* a model
    rather than something a model cannot do.
  - Renumbered accordingly: 03 Taste, 04 Deep Thinking, 05 Story & Emotion, 06 Prompting as Thinking.
    Ch. 07–10 keep their numbers; every part is now contiguous in reading order.
  - Part II is now exactly three chapters, one per blind spot named in Ch. 02.
  - Ch. 04 gains a named section on **verifying what a model tells you** — the "you judge" beat of the
    book's loop, which previously had no home.

---

## Chapter status

Tracked in the index table at the top of [`chapters/en/README.md`](chapters/en/README.md), which is
the working record. No chapter has been drafted yet.

| Chapter | Status |
|---------|--------|
| 01–10 | 📋 Planned |
