#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --noconfirm nautilus

if pacman -Qi dolphin &>/dev/null; then
  sudo pacman -Rns dolphin
fi

rm -rf ~/.local/share/dolphin ~/.local/state/dolphinstaterc
