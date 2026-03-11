#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi nautilus &>/dev/null; then
  sudo pacman -S --noconfirm nautilus
fi

if pacman -Qi dolphin &>/dev/null; then
  sudo pacman -Rns dolphin
  rm -rf ~/.local/share/dolphin ~/.local/state/dolphinstaterc
fi
