#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi neovim &>/dev/null; then
  sudo pacman -S --noconfirm neovim
fi

sudo pacman -S --noconfirm --needed\
  noto-fonts-emoji\
  wl-clipboard\
  base-devel\
  unzip\
  nodejs\
  npm\
  pnpm\
  yarn\
  lsof
