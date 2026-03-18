#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  cliphist
  hypridle
  hyprlock
  hyprpaper
  hyprpicker
  hyprshot
  libqalculate
  nwg-clipman
  satty
  snappy-switcher
  waybar
  wl-clip-persist
  wl-clipboard
  wlogout
)

install_pkgs install

if command -v snappy-switcher; then
  snappy-install-config
fi
