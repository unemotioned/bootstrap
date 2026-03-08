#!/usr/bin/env bash

set -euo pipefail

if ! command -v nvim &>/dev/null; then
  yay -S --noconfirm nvim
fi

yay -S --noconfirm --needed\
  noto-fonts-emoji\
  wl-clipboard\
  base-devel\
  unzip\
  node\
  npm\
  pnpm\
  yarn\
  lsof
