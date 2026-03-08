#!/usr/bin/env bash

set -euo pipefail

if ! command -v pacman-contrib &>/dev/null; then
  yay -S --noconfirm pacman-contrib
fi

if ! command -v pacman-contrib &>/dev/null; then
  echo '"pacman-contrib" not installed.'
  exit 1
else
  sudo systemctl enable --now paccache.timer
fi
