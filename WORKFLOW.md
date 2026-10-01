# Workflow — Writing and Shipping a Chapter

The operating manual for the repo: how a chapter gets from a blank file to `main`, and what each
script does.

This document describes the *mechanical* flow — the git commands, the checks, the files. The
*content* flow (research → draft → edit → translate) is described in
[`chapters/en/README.md`](chapters/en/README.md) and
[`chapters/zh/README.md`](chapters/zh/README.md).

---

## One-time setup

```bash
./scripts/setup-ssh.sh                              # SSH key + core.sshCommand
echo '<your-pat>' > .secrets/github-token           # PAT, for opening PRs
chmod 600 .secrets/github-token
./scripts/doctor.sh                                 # verify everything
```

Two credentials, two jobs:

| Credential | Used for | Stored in |
|------------|----------|-----------|
| SSH key | `git push` | `.git-ssh/` (gitignored) |
| GitHub token (PAT) | opening pull requests | `.secrets/github-token` (gitignored) |

They are deliberately separate. The token never touches your git history, and losing it only costs you
PR automation, not your ability to push.

### Why SSH, and why the key is inside the repo

`scripts/git-ssh.sh` is registered as `core.sshCommand` and points ssh at `.git-ssh/id_ed25519`. It:

- resolves the key path relative to the repo root, so git works from any subdirectory;
- passes `-F /dev/null`, which **ignores the system ssh config**.

That second point is not cosmetic. On this machine `/etc/ssh/ssh_config.d/` is owned by
`nobody:nogroup`, and ssh refuses to start at all when it reads it — which breaks every SSH push with
a `Bad owner or permissions on /etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf` error that looks
nothing like the real cause. `-F /dev/null` bypasses the broken include. You can confirm this with:

```bash
ssh -G github.com                      # fails on this machine
./scripts/git-ssh.sh -T git@github.com # succeeds — this is the path git actually uses
```

The durable fix is to correct the ownership (needs root):

```bash
sudo chown root:root /etc/ssh/ssh_config.d /usr/lib/systemd/ssh_config.d
sudo chown root:root /etc/ssh/ssh_config.d/*.conf /usr/lib/systemd/ssh_config.d/*.conf
```

Once that is done, ordinary `ssh` and `git` work everywhere, not just inside this repo.

`.git-ssh/` is gitignored. **Never commit it** — it holds a private key.

### If `setup-ssh.sh` cannot write `.git/config`

`setup-ssh.sh` persists its two settings (`core.sshCommand`, and an SSH `origin`) by writing to
`.git/config`. In a sandboxed or otherwise restricted session that file may be read-only, and the
script fails with:

```
error: could not write config file .git/config: Device or resource busy
```

Nothing is broken — the key, `known_hosts`, and the wrapper are all in place. Either re-run the script
with permission to write `.git/config`, or skip persistence entirely and set the channel per command:

```bash
export GIT_SSH_COMMAND="$PWD/scripts/git-ssh.sh"
git push git@github.com:<owner>/<repo>.git main
```

That reaches GitHub over SSH without touching any config; it just has to be repeated each session.

### The token

Looked up in this order, first hit wins:

1. `$GITHUB_TOKEN`
2. `$GH_TOKEN`
3. `.secrets/github-token`
4. `gh auth token`, if `gh` is installed and logged in

Create one at <https://github.com/settings/tokens>. Scope: **`repo`** (classic PAT), or
`Contents: read/write` + `Pull requests: read/write` (fine-grained).

Check it:

```bash
./scripts/github-token.sh --check    # reports the source without printing the token
```

Then verify the whole setup end to end:

```bash
./scripts/doctor.sh
```

---

## Writing a chapter

### 1. Research first

**Do not start drafting until the research is done.** A chapter written first and sourced afterwards
produces claims that fit the prose, which is backwards. See
[`chapters/en/research/README.md`](chapters/en/research/README.md) for the format and the reasoning.

```bash
cp templates/research-notes-template.md chapters/en/research/ch01-notes.md
```

Work through it:

1. **Search widely.** Run several queries from different angles — the claim itself, the counter-claim,
   the underlying data, and who disagrees. Record every query you actually ran, including the ones
   that went nowhere.
2. **Open every source.** A search snippet is a lead, not a source. Read the page. If it is
   paywalled, say so and find something a reader can check.
3. **Keep at least 5 independent sources** per chapter. Independent means separate origins, not one
   report reprinted five times.
4. **Prefer primary over secondary.** Original data, official reports, statistics, academic papers,
   first-hand accounts, and the actual pricing page count as primary and can carry a claim alone.
   Reporting *about* someone's data is fine as a lead but must not be the only support for a number.
5. **Record what you rejected, and why.** This is the most valuable part of the file. A source you
   cannot describe is a source you did not read.
6. **Downgrade claims the research does not support** — before they reach the draft, not after.

The result is `chapters/en/research/ch<NN>-notes.md`, committed alongside the chapter.

### 2. Start from the template

```bash
cp templates/chapter-template.md chapters/en/ch01-the-mirror.md
```

The filename convention is enforced by the linter: `ch<NN>-<kebab-case-slug>.md`. The filename for
each of the ten chapters is already fixed in the index table at the top of
[`chapters/en/README.md`](chapters/en/README.md) — copy it from there rather than inventing one, so
that the index, the file, and the research notes agree on the first try. **The examples in this
document use Ch. 01**, the first chapter anyone writes, and one whose number can never move.

### 3. Draft in `.scratch/` if you want

`.scratch/` is gitignored. Use it for fragments, outlines, and dead ends you are not ready to commit.

### 4. Fill in the front matter, length, and structure

The linter requires these fields: `chapter`, `title`, `part`, `status`, `language`, `created`,
`last_updated`, `assisted_by`, `edited_by`.

`status` is one of `planned` / `draft` / `review` / `stable`.

`part` must be one of the four names listed in
[`chapters/en/README.md`](chapters/en/README.md#chapter-index). Also fill in `word_target` (use
`3500`) and `tags`. The linter cross-checks `word_target` against the actual body length and warns if
they are more than 400 words apart.

Target **~3500 words of body**, inside the 2,500–5,000-word range non-fiction chapters normally run.

- two or three body sections of roughly 900–1200 words each, each with its own argument and example;
- **named after their arguments**, not "Section 2";
- finishes with `## The honest caveats` and `## Do this today`.

Ch. 10 is an epilogue and is deliberately shorter. The linter's length warnings are calibrated for
body chapters, so a deliberate ~1500-word epilogue will warn — note the reason in the front matter so
the next person does not "fix" it.

The full spec lives in [`chapters/en/README.md`](chapters/en/README.md#writing-standards), and the
template encodes it with worked examples. Length is a consequence of the arguments, not a target to
hit — a chapter that needs a second argument is short of an argument, not of words.

### 5. Delete the HTML comments

The template is full of `<!-- guidance -->`. Those are for you while drafting. Remove them before you
publish — the linter warns on any that remain.

Two comments are content, not scaffolding, and stay:

```markdown
<!-- verified YYYY-MM-DD — source: <URL> -->   a claim you actually checked
<!-- unverified -->                            a claim you have not checked yet
```

Put one under every concrete, checkable claim — an amount, a percentage, a dated event. `verified`
means you opened the source; never use it to mean "this sounds right". `unverified` is fine in draft
and becomes an **error** at `review`. See
[Factual claims](chapters/en/README.md#factual-claims) for the reasoning.

### 6. Check it

```bash
./scripts/check-chapter.sh chapters/en/ch01-the-mirror.md
```

Errors block publishing. Warnings are judgement calls. The check covers filename, front matter,
footer markers, leftover scaffolding, `TODO` markers, source markers, and length (warns below 2500
or above 4500 words of body, and flags a gap over 400 words between the body and the declared
`word_target`).

Two of the source checks are **errors**, not warnings: a `verified` marker with no `source:`, and any
`unverified` claim once `status` is `review` or `stable`.

### 7. Translate

The Chinese edition in `chapters/zh/` is not an afterthought — it is the edition most readers will
actually read. But **English is always the source of truth**, and the rule is one-way: fix the
English first, then update the translation. Never patch the Chinese to say something the English does
not, and never let the two drift.

```bash
cp chapters/en/ch01-the-mirror.md  chapters/zh/ch01-the-mirror.md
# ...write it as Chinese, not as a translation...
./scripts/check-chapter.sh  chapters/zh/ch01-the-mirror.md
```

The Chinese filename is **identical** to the English one; only the directory differs.

**Do not translate word for word. Write it in Chinese.** A translation that keeps the English
sentence structure is a translation nobody wants to read, and the reader is buying a Chinese book,
not fidelity to an English one. The full standard — sentence splitting, em-dash discipline, passive
voice, the vocabulary to avoid, the term glossary, and a pre-handoff checklist — lives in
[`chapters/zh/README.md`](chapters/zh/README.md). Read it before your first translation; the checklist
at the end is what you run before handing the chapter off.

The mechanical parts do not move, and `check-chapter.sh` will not catch it if they do:

- `<!-- verified -->` markers and their URLs are copied **verbatim**, one for one with the English.
  The translation does not re-verify anything — it carries the verification across. Dropping a marker
  strands a claim.
- The footer stays in English, character for character; the linter checks those four lines literally.
- Table markup, English identifiers (`SWE-bench`, `MMLU`), and quoted search terms stay as they are.
- The two fixed section headings have fixed Chinese forms: `The honest caveats` → `诚实的保留意见`,
  `Do this today` → `今天就开始`.

`check-chapter.sh` will always print two warnings for a Chinese chapter — `body is short` and a gap
against `word_target` — because it counts words by whitespace and Chinese has none. That is a known
limitation of the tool, not a sign the translation is thin; `chapters/zh/README.md` says what to check
instead.

To ship a translation, publish the Chinese file with the same script — the branch is derived from the
filename, so `chapters/zh/ch01-the-mirror.md` gets its own `draft/ch01-the-mirror`
branch and PR:

```bash
./scripts/publish-chapter.sh chapters/zh/ch01-the-mirror.md
```

Because `publish-chapter.sh` stages files by path, a translation PR carries the Chinese file, plus any
of `CHANGELOG.md`, `chapters/zh/research/ch<NN>-notes.md`, and the two English index files that
happen to have uncommitted changes. In a translation you should rarely be touching the English
indexes — if they show up in the PR, you edited them and did not mean to. `chapters/zh/README.md`'s
progress table is **not** staged by the script; update it by hand with the Chinese file.

### 8. Publish

```bash
./scripts/publish-chapter.sh chapters/en/ch01-the-mirror.md
```

This does, in order:

1. lints the chapter — aborts on errors;
2. creates or reuses the branch `draft/<filename-stem>`;
3. commits as `draft(ch01): <title>` (or `revise(...)` if the file is already tracked);
4. pushes over SSH;
5. opens a draft PR through the REST API, if a token is available — titled with the same
   `draft(ch01): <title>` string as the commit, so the PR list and `main`'s history agree.
   (`pr-create.sh` only reports an existing PR, so this applies when the PR is first opened —
   re-running `publish-chapter.sh` on an already-open PR pushes to it without renaming it.)

Flags: `--dry-run` previews without touching anything, `--no-pr` pushes without opening a PR,
`--type` overrides the inferred commit type.

It will **not** move you off a branch it did not create, and it never touches `main` or force-pushes.
Re-running it on the same chapter pushes new commits to the same branch — if a PR is already open for
that branch, `pr-create.sh` reports it rather than opening a second one.

### 9. Merge, then reset

Single-author repo: read your own diff, then

```bash
./scripts/pr-merge.sh draft/ch01-the-mirror
```

That marks the draft PR ready (the API refuses to merge a draft, and there is no REST endpoint to
un-draft it), waits for GitHub to compute mergeability, squash-merges, and deletes the branch locally
and on the remote.

Doing it by hand instead:

```bash
# mark the PR ready for review in the GitHub UI first — drafts cannot be merged
git checkout main && git pull && git branch -d draft/ch01-the-mirror
```

---

## Updating the index and changelog

A chapter is not shipped until three files agree:

| File | What to update |
|------|----------------|
| `chapters/en/README.md` | chapter status: `planned` → `draft` → `review` |
| `CHANGELOG.md` | an entry under `Unreleased` (or the current `YYYY.MM` heading, once releases are cut) |
| `chapters/en/ch<NN>-....md` | `last_updated` in front matter **and** the footer date |

The `Last updated:` footer and the `last_updated:` field should match. If you change one, change both.

`publish-chapter.sh` stages `chapters/en/README.md`, `CHANGELOG.md`, `chapters/en/research/README.md`,
and the chapter's own `research/ch<NN>-notes.md` alongside the chapter, when they have uncommitted
changes — so none of the four gets left behind. It will not guess at anything else: other modified
files stay unstaged. For a **new** chapter it warns if `CHANGELOG.md` is untouched, since that entry
is a judgement call it cannot write for you.

If you renumber an unshipped chapter, the index table is your responsibility — nothing checks it.

---

## Reference

| Script | Purpose |
|--------|---------|
| `scripts/setup-ssh.sh` | Create/verify the SSH key, wire up `core.sshCommand`, point `origin` at SSH. `--check` to verify only. |
| `scripts/git-ssh.sh` | The SSH wrapper git calls. Resolves the repo-local key, ignores the broken system ssh config. |
| `scripts/github-token.sh` | Resolve and diagnose the PAT. `--check` reports the source without printing the token. |
| `scripts/pr-create.sh` | Open (or find) a PR via the REST API. Idempotent. |
| `scripts/pr-merge.sh` | Mark a draft PR ready, merge it, delete the branch. `--dry-run` to preview. |
| `scripts/doctor.sh` | Diagnose repo, ssh, key, and token in one shot. Start here when something fails. |
| `scripts/check-chapter.sh` | Lint one chapter file. Non-zero exit on errors. |
| `scripts/publish-chapter.sh` | Branch → commit → push → PR for one chapter. |
| `scripts/gh.sh` | Optional `gh` wrapper. Not required — PRs go through the REST API. |

Scripts use `python3` for JSON and avoid `jq` and `gh` as hard dependencies: `jq` is not installed on
the machine this was built on, and `gh` is not reliably authenticated inside sandboxed sessions.

---

## Troubleshooting

Start with `./scripts/doctor.sh`. It checks all of the below at once.

**`Bad owner or permissions on /etc/ssh/ssh_config.d/...`**
The system ssh config is broken. Inside this repo, `scripts/git-ssh.sh` works around it with
`-F /dev/null`. Outside the repo, fix the ownership (see
[One-time setup](#one-time-setup)) — it needs root.

**`Permission denied (publickey)`**
The key is not registered on GitHub. Run `./scripts/setup-ssh.sh`, add the printed public key at
<https://github.com/settings/ssh/new>, then `./scripts/setup-ssh.sh --check`.

**`could not write config file .git/config: Device or resource busy`**
`.git/config` is read-only in this session. The key and wrapper are still fine — see
[If `setup-ssh.sh` cannot write `.git/config`](#if-setup-sshsh-cannot-write-gitconfig).

**PR creation is skipped**
No token was found. `./scripts/github-token.sh --check` says which source it looked at. The push still
worked — only the PR was skipped, and the compare URL is printed for you.

**`GitHub API error: Bad credentials`**
The token is wrong, expired, or revoked. Issue a new one.

**`GitHub API error: Resource not accessible by personal access token`**
The token lacks scope, or the org requires SSO authorization. Needs `repo`.

**`could not read Username for 'https://github.com'`**
`origin` is still on HTTPS and nothing is supplying credentials. Run `./scripts/setup-ssh.sh`, which
switches it to SSH — or push with an explicit SSH URL (see above).
