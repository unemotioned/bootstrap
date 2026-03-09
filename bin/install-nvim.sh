#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi nvim &>/dev/null; then
  yay -S --noconfirm neovim
fi

yay -S --noconfirm --needed\
  noto-fonts-emoji\
  wl-clipboard\
  base-devel\
  unzip\
  nodejs\
  npm\
  pnpm\
  yarn\
  lsof
