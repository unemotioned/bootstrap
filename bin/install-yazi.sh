#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed yazi

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
