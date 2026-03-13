#!/usr/bin/env bash
set -euo pipefail

if pacman -Qi brillo &>/dev/null; then
  echo 'brillo already installed'
  exit 0
fi

if ! pacman -Qi go-md2man &>/dev/null; then
  sudo pacman -S --noconfirm go-md2man
fi

REPO="$HOME/repo"
PKG='brillo'
DIR="$REPO/$PKG"

mkdir -p "$REPO"
cd "$REPO"

if [ -d "$DIR" ]; then
  echo "'$PKG' already cloned"
else
  git clone https://gitlab.com/cameronnemo/brillo.git "$DIR"
fi

cd "$DIR"
sudo make install.setgid

BCTL='brightnessctl'
if pacman -Qi "$BCTL" &>/dev/null; then
  sudo pacman -Rns --noconfirm "$BCTL"
fi

cd "$EXE_PATH"
