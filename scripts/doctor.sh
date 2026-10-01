#!/usr/bin/env bash
#
# Check that this repo can actually write to GitHub.
#
#   ./scripts/doctor.sh
#
# Answers, in one shot: is the system ssh config sane, is the SSH key wired up,
# is there a usable token, and which transport will publishing use? Run this
# first whenever a push or a PR fails.

set -uo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")"
cd "$repo_root"

ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }
warn() { printf '  \033[33m!\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }
head_() { printf '\n\033[1m%s\033[0m\n' "$1"; }

problems=0

# --- repo --------------------------------------------------------------------
head_ "Repository"
origin="$(git remote get-url origin 2>/dev/null || echo "")"
if [[ -z "$origin" ]]; then
  bad "no 'origin' remote"; problems=$((problems+1))
else
  slug="$(sed -E 's#^git@github\.com:##; s#^https://([^@]*@)?github\.com/##; s#\.git$##' <<<"$origin")"
  ok "origin -> $slug"
  case "$origin" in
    git@*)   info "transport: SSH" ;;
    https://*) info "transport: HTTPS" ;;
    *)       warn "unrecognized remote form" ;;
  esac
fi

# --- system ssh config -------------------------------------------------------
head_ "System SSH config"
if ssh -G github.com >/dev/null 2>/tmp/doctor-ssh-g; then
  ok "ssh can read its system config"
else
  # Not counted as blocking: scripts/git-ssh.sh passes -F /dev/null and bypasses
  # this. It only affects ssh calls made outside the repo.
  warn "ssh refuses to start: $(head -1 /tmp/doctor-ssh-g)"
  echo "     Harmless inside this repo (git-ssh.sh bypasses it with -F /dev/null)."
  echo "     Fix it if you want plain 'ssh'/'git' to work outside the repo:"
  echo "       sudo chown root:root /etc/ssh/ssh_config.d /usr/lib/systemd/ssh_config.d"
  echo "       sudo chown root:root /etc/ssh/ssh_config.d/*.conf /usr/lib/systemd/ssh_config.d/*.conf"
fi
rm -f /tmp/doctor-ssh-g

# --- the channel pushes actually use -----------------------------------------
# This is what matters: git talks to GitHub through core.sshCommand (git-ssh.sh),
# not through a bare ssh call. Test the real path.
head_ "Push channel (what git actually uses)"
ssh_cmd="$(git config --get core.sshCommand || echo "")"
if [[ -n "$ssh_cmd" ]]; then
  ok "core.sshCommand -> $(sed "s#$repo_root/##" <<<"$ssh_cmd")"
else
  info "core.sshCommand not set; git uses the system ssh config"
fi

if remote_refs="$(git ls-remote origin 2>&1)"; then
  ok "git can reach origin ($(grep -c . <<<"$remote_refs") refs visible)"
  if grep -q "Permission denied (publickey)" <<<"$remote_refs"; then
    bad "key rejected"; problems=$((problems+1))
  fi
else
  bad "git cannot reach origin:"
  head -2 <<<"$remote_refs" | sed 's/^/     /'
  if grep -q "Permission denied (publickey)" <<<"$remote_refs"; then
    echo "     The SSH key is not registered. Add it at:"
    echo "       https://github.com/settings/ssh/new"
    info "current public key:"
    [[ -f "$repo_root/.git-ssh/id_ed25519.pub" ]] && \
      sed 's/^/       /' "$repo_root/.git-ssh/id_ed25519.pub"
  fi
  problems=$((problems+1))
fi

# --- token -------------------------------------------------------------------
head_ "Token (for opening pull requests)"
if token_check="$(./scripts/github-token.sh --check 2>&1)"; then
  echo "$token_check"
  # Confirm the token is actually accepted, not just present.
  if api_out="$(curl -s -o /dev/null -w '%{http_code}' \
                  -H "Authorization: Bearer "$(./scripts/github-token.sh)"" \
                  https://api.github.com/user 2>/dev/null)"; then
    case "$api_out" in
      200) ok "token accepted by the GitHub API" ;;
      401) bad "token rejected (401) — wrong, expired, or revoked"
           problems=$((problems+1)) ;;
      *)   warn "unexpected API response: HTTP $api_out" ;;
    esac
  else
    warn "could not reach api.github.com"
  fi
else
  warn "no token — pull requests will not be opened automatically"
  echo "     echo '<your-pat>' > .secrets/github-token && chmod 600 .secrets/github-token"
fi

# --- gh ----------------------------------------------------------------------
head_ "GitHub CLI (optional)"
if command -v gh >/dev/null 2>&1; then
  ok "gh found: $(command -v gh)"
  if gh auth status >/dev/null 2>&1; then
    ok "gh is authenticated"
  else
    info "gh installed but not authenticated (fine — pr-create.sh uses the token)"
  fi
else
  info "gh not installed (fine — pr-create.sh uses the token via the REST API)"
fi

# --- verdict -----------------------------------------------------------------
head_ "Verdict"
if [[ "$problems" -gt 0 ]]; then
  bad "$problems blocking problem(s) above"
  exit 1
fi
ok "no blocking problems found"
