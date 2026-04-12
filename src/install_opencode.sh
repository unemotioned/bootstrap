#!/usr/bin/env bash
set -euo pipefail

# opencode-bin: compiled opencode
# lsof: for opencode.nvim compatibility
if ! yay -Qi opencode-bin &>/dev/null; then
    yay -S --noconfirm --needed opencode-bin lsof
fi
