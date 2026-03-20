#!/usr/bin/env bash
set -euo pipefail

# opencode: AI agent
# lsof: opencode.nvim dependency
yay -S --noconfirm --needed opencode-bin lsof

# add path if binary is not found
if ! command -v opencode &>/dev/null; then
  export PATH="$HOME/.opencode/bin:$PATH"
fi

# auth login if no credentials exist
cred=$(opencode providers list | grep credentials | awk '{print $2}')
if [ "$cred" = "0" ]; then
  opencode auth login
fi
