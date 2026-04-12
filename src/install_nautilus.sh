#!/usr/bin/env bash
set -euo pipefail

yay -S --noconfirm --needed \
    nautilus \
    catppuccin-gtk-theme-mocha

if pacman -Qi dolphin &>/dev/null; then
    sudo pacman -Rns dolphin
fi

rm -rf \
    ~/.local/share/dolphin \
    ~/.local/state/dolphinstaterc
