#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi chafa &>/dev/null; then
  sudo pacman -S --noconfirm chafa
fi
