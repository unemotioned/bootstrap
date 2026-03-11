#!/usr/bin/env bash
set -euo pipefail

REPO='repo'

# Create repo directory if it doesn't exist
mkdir -p ~/"$REPO"

# Clone yay AUR helper source if not already present
if [ ! -d ~/"$REPO"/yay ]; then
  cd ~/"$REPO"
  git clone https://aur.archlinux.org/yay.git
fi

# Build and install yay if not already installed
if ! pacman -Qi yay &>/dev/null; then
  cd ~/"$REPO"/yay
  makepkg -si --noconfirm
fi

cd "$HOME"
