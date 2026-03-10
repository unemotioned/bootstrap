#!/usr/bin/env bash
set -euo pipefail

if pacman -Qi github-cli &>/dev/null; then
  gh auth login
else
  echo 'github-cli not installed'
fi
