#!/usr/bin/env bash

set -euo pipefail

if ! command -v yazi &>/dev/null;then
  sudo pacman -S --noconfirm yazi
fi

sudo pacman -S --noconfirm --needed\
  7zip\
  jq\
  poppler\
  fd\
  ripgrep\
  fzf\
  zoxide\
  resvg\
  imagemagick
