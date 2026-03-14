#!/usr/bin/env bash
set -euo pipefail

# opencode: AI agent
# lsof: opencode.nvim dependency
sudo pacman -S --noconfirm --needed opencode lsof

# add path if binary is not found
if ! command -v opencode &>/dev/null; then
  export PATH="$HOME/.opencode/bin:$PATH"
fi

# auth login if not 0 credentials exists
if opencode providers list | grep -q "0 credentials"; then
  opencode auth login
fi
