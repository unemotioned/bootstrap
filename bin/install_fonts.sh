#!/usr/bin/env bash
set -euo pipefail

. ../src/lib.sh

install=(
  adobe-source-han-sans-kr-fonts
  adobe-source-han-serif-kr-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  otf-font-awesome
  ttf-iosevka-nerd
  ttf-jetbrains-mono-nerd
)

install_pkgs install

fc-cache -fv
