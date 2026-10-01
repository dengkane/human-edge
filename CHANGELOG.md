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

---

## Chapter status

Tracked in the index table at the top of [`chapters/en/README.md`](chapters/en/README.md), which is
the working record. No chapter has been drafted yet.

| Chapter | Status |
|---------|--------|
| 01–10 | 📋 Planned |
