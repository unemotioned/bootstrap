#!/usr/bin/env bash
set -euo pipefail

if pacman -Qi brillo &>/dev/null; then
  echo 'brillo already installed'
  exit 0
fi

sudo pacman -S --noconfirm --needed go-md2man

repo="$HOME/repo"
brll="$repo/brillo"

mkdir -p "$repo"
cd "$repo"

if [ -d "$brll" ]; then
  echo "brillo already cloned"
else
  git clone https://gitlab.com/cameronnemo/brillo.git "$brll"
fi

cd "$brll"
sudo make install.setgid

bctl='brightnessctl'
if pacman -Qi "$bctl" &>/dev/null; then
  sudo pacman -Rns --noconfirm "$bctl"
fi

cd "$EXE_PATH"
