#!/usr/bin/env bash
set -euo pipefail

if pacman -Qi brillo &>/dev/null; then
  echo 'brillo already installed'
  exit 0
fi

sudo pacman -S --noconfirm --needed go-md2man

REPO="$HOME/repo"
BRLL="$REPO/brillo"

mkdir -p "$REPO"
cd "$REPO"

if [ -d "$BRLL" ]; then
  echo "brillo already cloned"
else
  git clone https://gitlab.com/cameronnemo/brillo.git "$BRLL"
fi

cd "$BRLL"
sudo make install.setgid

BCTL='brightnessctl'
if pacman -Qi "$BCTL" &>/dev/null; then
  sudo pacman -Rns --noconfirm "$BCTL"
fi

cd "$EXE_PATH"
