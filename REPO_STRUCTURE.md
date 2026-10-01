# Repository Structure

human-edge/
├── README.md              # English homepage
├── README_zh.md           # Chinese version
├── CONTRIBUTING.md        # Contribution guide (EN)
├── CONTRIBUTING_zh.md     # Contribution guide (ZH)
├── glossary.md            # Bilingual terminology
├── .gitignore             # Git ignore rules
├── REPO_STRUCTURE.md      # This file
│
├── /book
│   ├── /en
│   │   ├── ch01.md
│   │   ├── ch02.md
│   │   └── ...
│   └── /zh
│       ├── ch01.md
│       ├── ch02.md
│       └── ...
│
├── /assets
│   ├── /images
│   └── /diagrams
│
└── /paid                 # (gitignored, not public)
    ├── /en
    └── /zh

## Notes

- `/paid/` is excluded via `.gitignore` — premium content lives in a private repo or paid platform
- Chapters are numbered `ch01.md` through `ch10.md`
- Images go in `/assets/images/`, diagrams in `/assets/diagrams/`
- Both language versions should stay in sync (chapter-for-chapter)
