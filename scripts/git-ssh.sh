#!/usr/bin/env bash
# SSH wrapper for this repository.
#
# Why this exists: the primary key lives in .git-ssh/ inside the repo instead of
# ~/.ssh. This wrapper resolves its own location, so it works no matter which
# subdirectory you run git from.
#
# It also passes `-F /dev/null`, which ignores the system ssh_config. That is not
# optional on this machine: /etc/ssh/ssh_config.d/ has a config file with bad
# ownership, and ssh refuses to run at all when it reads it.
#
# Wired up via `git config core.sshCommand scripts/git-ssh.sh`.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
ssh_dir="$repo_root/.git-ssh"
key="$ssh_dir/id_ed25519"

if [[ ! -f "$key" ]]; then
  echo "git-ssh.sh: no SSH key at $key" >&2
  echo "git-ssh.sh: run scripts/setup-ssh.sh first" >&2
  exit 1
fi

exec ssh \
  -F /dev/null \
  -i "$key" \
  -o IdentitiesOnly=yes \
  -o UserKnownHostsFile="$ssh_dir/known_hosts" \
  -o StrictHostKeyChecking=accept-new \
  -o ConnectTimeout=20 \
  "$@"
