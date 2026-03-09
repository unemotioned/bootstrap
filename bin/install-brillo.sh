#!/usr/bin/env bash

set -euo pipefail

if command -v brillo &>/dev/null; then
  echo 'brillo already installed'
  exit 0
fi

if ! command -v go-md2man &>/dev/null; then
  yay -S --noconfirm go-md2man
fi

mkdir -p ~/"$REPO"
cd ~/"$REPO"
git clone https://gitlab.com/cameronnemo/brillo.git
cd ~/"$REPO"/brillo
sudo make install.setgid

cd ~
