#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
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

fc-cache -v
