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
  git clone https://gitlab.com/cameronnemo/brillo.git
fi

cd "$brll"
sudo make install.setgid

if pacman -Qi brightnessctl &>/dev/null; then
  sudo pacman -Rns --noconfirm brightnessctl
fi

cd "$EXE_PATH"
