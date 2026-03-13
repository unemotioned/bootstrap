#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed base-devel

REPO="$HOME/repo"
YAY="$REPO/yay"

# Create repo directory if it doesn't exist
mkdir -p "$REPO"

# Clone yay AUR helper source if not already present
if [ ! -d "$YAY" ]; then
  cd "$REPO"
  git clone https://aur.archlinux.org/yay.git
fi

# Build and install yay if not already installed
if ! pacman -Qi yay &>/dev/null; then
  cd "$YAY"
  makepkg -si --noconfirm
fi

# sync with db
yay

cd "$EXE_PATH"
