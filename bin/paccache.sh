#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi pacman-contrib &>/dev/null; then
  yay -S --noconfirm pacman-contrib
fi

if ! pacman -Qi pacman-contrib &>/dev/null; then
  echo '"pacman-contrib" not installed.'
  exit 1
fi

sudo systemctl enable --now paccache.timer
