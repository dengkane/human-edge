#!/usr/bin/env bash
# Thin wrapper around the system `gh`.
#
#   ./scripts/gh.sh auth login
#   ./scripts/gh.sh pr list
#   ./scripts/gh.sh auth status
#
# Why this wrapper exists instead of calling gh directly:
#
#   gh writes its config and auth token to $XDG_CONFIG_HOME/gh (~/.config/gh).
#   In restricted environments where $HOME is read-only, that write fails and
#   `gh auth login` dies with an unrelated-looking error. This script probes for
#   a usable config dir and falls back to a gitignored one inside the repo.
#
#   In a normal shell the probe passes and gh uses its usual location, so this
#   wrapper is effectively a no-op.
#
# To install gh:  sudo apt-get install gh   (or your platform's package manager)
#                 https://github.com/cli/cli#installation

set -euo pipefail

if ! command -v gh >/dev/null 2>&1; then
  cat >&2 <<'EOF'
gh is not installed.

  Debian/Ubuntu:  sudo apt-get install gh
  macOS:          brew install gh
  Other:          https://github.com/cli/cli#installation

gh is only needed to open pull requests automatically. Without it,
scripts/publish-chapter.sh still pushes the branch and prints a compare URL
you can open in the browser.
EOF
  exit 1
fi

# Try gh's normal config location first; only fall back if it is unusable.
#
# GH_CONFIG_DIR is where gh keeps hosts.yml, i.e. your auth token. If you
# authenticate in your own terminal, gh writes it to ~/.config/gh — and a
# sandboxed session that cannot read $HOME would then look unauthenticated.
# So if the repo already has an authenticated config, prefer it.
if [[ -z "${GH_CONFIG_DIR:-}" ]]; then
  repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo "")"
  local_cfg="${repo_root:+$repo_root/.tools/gh-config}"

  if [[ -n "$local_cfg" && -f "$local_cfg/hosts.yml" ]]; then
    export GH_CONFIG_DIR="$local_cfg"
  else
    gh_cfg_default="${XDG_CONFIG_HOME:-$HOME/.config}/gh"
    if ! { mkdir -p "$gh_cfg_default" && [ -w "$gh_cfg_default" ]; }; then
      if [[ -n "$local_cfg" ]]; then
        export GH_CONFIG_DIR="$local_cfg"
        mkdir -p "$GH_CONFIG_DIR"
      fi
    fi
  fi
fi

exec gh "$@"
