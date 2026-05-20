#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    adobe-source-han-sans-kr-fonts
    adobe-source-han-serif-kr-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-extra
    ttf-iosevka-nerd
    ttf-jetbrains-mono-nerd
)

install_pkgs install

dir="$HOME/.local/share/fonts"
zip="Google_Sans_Flex.zip"

mkdir -p "$dir"
cp "$script_dir/asset/fonts/Google_Sans_Flex.zip" "$dir"
unzip "$dir/$zip" -d "$dir"/GoogleSansFlex
rm "$dir/$zip"

fc-cache -fv
