#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi pacman-contrib &>/dev/null; then
  sudo pacman -S --noconfirm pacman-contrib
fi

sudo systemctl enable --now paccache.timer
