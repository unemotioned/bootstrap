#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed base-devel

repo="$HOME/repo"
yay="$repo/yay"

# Create repo directory if it doesn't exist
mkdir -p "$repo"

# Clone yay AUR helper source if not already present
if [ ! -d "$yay" ]; then
  cd "$repo"
  git clone https://aur.archlinux.org/yay.git
fi

# Build and install yay if not already installed
if ! pacman -Qi yay &>/dev/null; then
  cd "$yay"
  makepkg -si --noconfirm
fi

# sync with db
yay

cd "$EXE_PATH"
