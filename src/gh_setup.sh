#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed github-cli

if gh auth status &>/dev/null; then
  echo 'Already authenticated with GitHub.'
else
  gh auth login
fi
