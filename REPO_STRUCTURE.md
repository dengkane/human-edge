# Repository Structure

```
human-edge/
├── README.md                    # English homepage
├── README_zh.md                 # Chinese homepage
├── AGENTS.md                    # Instructions for AI coding agents (thin pointer — read the docs it names)
├── WORKFLOW.md                  # Write-and-ship manual: the 9-step flow, script reference, troubleshooting
├── CHANGELOG.md                 # What shipped, by release
├── CONTRIBUTING.md              # Contribution guide (EN)
├── CONTRIBUTING_zh.md           # Contribution guide (ZH)
├── glossary.md                  # Bilingual terminology — the translation authority
├── LICENSE                      # CC BY-NC-SA 4.0
├── REPO_STRUCTURE.md            # This file
│
├── chapters/
│   ├── en/                      # English chapters — THE SOURCE OF TRUTH
│   │   ├── README.md            # Index, writing standards, factual-claims rules, chapter boundaries
│   │   ├── ch01-the-mirror.md   # ...through ch10, added as they are written
│   │   └── research/
│   │       ├── README.md        # Research-note format, source tiers
│   │       └── ch01-notes.md    # One per chapter, committed alongside it
│   └── zh/                      # Chinese edition, translated FROM en/ (never the reverse)
│       ├── README.md            # Translation standard, progress table, pre-handoff checklist
│       ├── ch01-the-mirror.md   # Same filenames as en/, different directory
│       └── research/
│           └── README.md
│
├── templates/
│   ├── chapter-template.md      # Copy this. Never hand-roll front matter or the footer.
│   └── research-notes-template.md
│
├── scripts/                     # Tooling — see WORKFLOW.md for the full reference
│   ├── check-chapter.sh         # Lint one chapter (filename, front matter, sources, length)
│   ├── publish-chapter.sh       # branch → commit → push → draft PR
│   ├── pr-create.sh             # Open/find a PR via the REST API
│   ├── pr-merge.sh              # Un-draft, squash-merge, delete the branch
│   ├── setup-ssh.sh             # One-time SSH setup (key + core.sshCommand)
│   ├── git-ssh.sh               # The SSH wrapper git calls via core.sshCommand
│   ├── github-token.sh          # Resolve/diagnose the PAT
│   ├── doctor.sh                # Diagnose repo, ssh, key, token. Start here when something fails.
│   └── gh.sh                    # Optional gh wrapper (not required)
│
├── assets/
│   ├── images/                  # Figures referenced from chapters
│   └── diagrams/
│
├── .gitignore                   # /paid/, .secrets/, .git-ssh/, .scratch/, ref-docs/
├── .secrets/                    # (gitignored) GitHub PAT for PR automation
├── .git-ssh/                    # (gitignored) SSH key for pushing
│
└── paid/                        # (gitignored) premium content — lives elsewhere, not in this repo
    ├── en/
    └── zh/
```

## Notes

- **`chapters/en/` is the source of truth.** `chapters/zh/` is translated from it, never the reverse.
  Fix the English first, then sync the Chinese — see [`chapters/zh/README.md`](chapters/zh/README.md).
- **All ten chapters are open source.** The paid tier is the *Premium Pack* (case studies, prompt
  template library, workbook, video walkthroughs), which is why `/paid/` is gitignored rather than
  holding half the book.
- Chapter filenames are `ch<NN>-<slug>.md` and are **identical in both languages** — only the
  directory differs. The slugs are fixed in the index at the top of
  [`chapters/en/README.md`](chapters/en/README.md).
- Chapter numbers are **stable once published**. A shipped chapter keeps its number; change its title
  or placement instead.
- Every chapter has a matching `research/ch<NN>-notes.md`. The linter cross-checks that the sources
  cited in a chapter appear in its notes — see
  [`chapters/en/research/README.md`](chapters/en/research/README.md).
- `ref-docs/` is gitignored reference material copied from similar projects. It is a scratch input,
  not part of the book, and is not tracked.
- `assets/` is empty until the first chapter needs a figure. Diagrams are referenced by relative path
  from the chapter that uses them.
