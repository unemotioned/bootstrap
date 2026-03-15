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
zip='GoogleSansFlex.zip'
url="https://fonts.google.com/download?family=Google+Sans+Flex"

mkdir -p "$dir"
wget -O "$dir/$zip" "$url"
unzip "$dir/$zip" -d "$dir"
rm "$dir/$zip"

fc-cache -fv
