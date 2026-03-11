#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi nautilus &>/dev/null; then
  sudo pacman -S --noconfirm nautilus
fi

if pamcan -Qi dolphin &>/dev/null; then
  sudo pacman -Rns dolphin
fi

rm -rf ~/.local/share/dolphin
rm ~/.local/state/dolphinstaterc
