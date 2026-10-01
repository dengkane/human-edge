#!/usr/bin/env bash
#
# Set up SSH-based pushing for this repository.
#
# Safe to run repeatedly. It will not overwrite an existing key.
#
#   ./scripts/setup-ssh.sh          # create key + configure repo + verify
#   ./scripts/setup-ssh.sh --check  # verify only, change nothing
#
# Why the key lives in .git-ssh/ instead of ~/.ssh: this repository is meant to be
# self-contained, and on some setups ~/.ssh is not writable. The key is gitignored
# and the wrapper at scripts/git-ssh.sh points ssh at it.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

ssh_dir="$repo_root/.git-ssh"
key="$ssh_dir/id_ed25519"
pub="$key.pub"
wrapper="$repo_root/scripts/git-ssh.sh"

# Derive owner/repo from the existing origin remote, so this script is not tied
# to one repository name. Accepts either an SSH or an HTTPS origin.
remote_url="$(git remote get-url origin 2>/dev/null || echo "")"
slug="$(sed -E 's#^git@github\.com:##; s#^https://([^@]*@)?github\.com/##; s#\.git$##' <<<"$remote_url")"
if [[ -z "$slug" || "$slug" != */* ]]; then
  echo "setup-ssh.sh: cannot derive owner/repo from origin ('$remote_url')" >&2
  echo "              set it first:" >&2
  echo "                  git remote set-url origin git@github.com:<owner>/<repo>.git" >&2
  exit 1
fi
expected_remote="git@github.com:${slug}.git"

ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }

verify() {
  echo
  echo "Verifying SSH access to GitHub..."
  # ssh -T exits 1 even on success — GitHub does not offer shell access.
  local out
  out="$("$wrapper" -T git@github.com 2>&1 || true)"
  if grep -q "successfully authenticated" <<<"$out"; then
    ok "GitHub accepted the key: $(grep -o 'Hi [^!]*' <<<"$out" | head -1)"
    return 0
  fi
  bad "GitHub did not accept the key yet."
  echo
  echo "  Add this public key at:"
  echo "  https://github.com/settings/ssh/new"
  echo
  echo "  Title:  $slug ($(hostname))"
  echo "  Key:    $(cat "$pub")"
  echo
  echo "  Then re-run: ./scripts/setup-ssh.sh --check"
  return 1
}

check_only=false
[[ "${1:-}" == "--check" ]] && check_only=true

echo "Repository: $repo_root"
echo

if $check_only; then
  [[ -f "$key" ]] && ok "key present" || { bad "no key at $key"; exit 1; }
  [[ -x "$wrapper" ]] && ok "wrapper executable" || bad "wrapper not executable: chmod +x scripts/git-ssh.sh"
  [[ "$(git remote get-url origin 2>/dev/null || echo)" == "$expected_remote" ]] \
    && ok "origin uses SSH" || bad "origin is not $expected_remote"
  verify
  exit $?
fi

# --- 1. key -----------------------------------------------------------------
echo "1. SSH key"
mkdir -p "$ssh_dir"
chmod 700 "$ssh_dir"
if [[ -f "$key" ]]; then
  ok "reusing existing key at .git-ssh/id_ed25519"
else
  ssh-keygen -t ed25519 -C "$slug" -f "$key" -N "" -q </dev/null
  chmod 600 "$key"; chmod 644 "$pub"
  ok "generated new ed25519 key"
fi
info "fingerprint: $(ssh-keygen -lf "$pub" | awk '{print $2}')"

# --- 2. known_hosts ---------------------------------------------------------
echo
echo "2. Host keys"
if [[ ! -s "$ssh_dir/known_hosts" ]]; then
  ssh-keyscan -t ed25519,rsa github.com > "$ssh_dir/known_hosts" 2>/dev/null || true
fi
[[ -s "$ssh_dir/known_hosts" ]] && ok "github.com pinned in .git-ssh/known_hosts" \
                               || bad "could not fetch host keys (network?)"

# --- 3. wrapper -------------------------------------------------------------
echo
echo "3. SSH wrapper"
chmod +x "$wrapper" 2>/dev/null || true
[[ -x "$wrapper" ]] && ok "scripts/git-ssh.sh is executable" || bad "could not make wrapper executable"

# --- 4. repo config ---------------------------------------------------------
echo
echo "4. Repository configuration"
git config core.sshCommand "$wrapper"
ok "core.sshCommand -> scripts/git-ssh.sh"
if [[ "$(git remote get-url origin 2>/dev/null || echo)" != "$expected_remote" ]]; then
  git remote set-url origin "$expected_remote"
  ok "origin switched to SSH"
else
  ok "origin already uses SSH"
fi

# --- 5. prove it ------------------------------------------------------------
if verify; then
  echo
  ok "All set. Push with: git push -u origin <branch>"
  exit 0
fi
exit 1
