#!/usr/bin/env bash

set -euo pipefail

if ! command -v zsh &>/dev/null; then
  echo 'ZSH is not installed.'
  exit 1
fi

ZSH_PATH=$(which zsh)

if [ "$SHELL" = "$ZSH_PATH" ]; then
  echo 'ZSH is already default shell.'
  exit 0
fi

chsh -S "$ZSH_PATH"

echo 'Default shell changed to ZSH. Log out and back in for the change to take effect.'
