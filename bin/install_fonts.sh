#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  adobe-source-han-sans-kr-fonts
  adobe-source-han-serif-kr-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  ttf-iosevka-nerd
  ttf-jetbrains-mono-nerd
)

install_pkgs install

dir="$HOME/.local/share/fonts"
zip="Google_Sans_Flex.zip"

mkdir -p "$dir"
cp "$EXE_PATH"/asset/fonts/Google_Sans_Flex.zip "$dir"
unzip "$dir/$zip" -d "$dir"/GoogleSansFlex
rm "$dir/$zip"

fc-cache -fv
