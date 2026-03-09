#!/usr/bin/env bash

set -euo pipefail

if ! pacman -Qi yazi &>/dev/null;then
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
