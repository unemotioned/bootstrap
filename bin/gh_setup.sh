#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi github-cli &>/dev/null; then
  echo 'github-cli not installed'
  exit 0
fi

if gh auth status &>/dev/null; then
  echo 'Already authenticated with GitHub, skipping'
else
  gh auth login
fi
