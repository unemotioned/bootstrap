#!/usr/bin/env bash
set -euo pipefail

# lsof: for opencode.nvim compatibility
sudo pacman -S --noconfirm --needed opencode lsof
