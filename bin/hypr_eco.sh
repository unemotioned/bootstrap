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
  waybar
  wl-clip-persist
  wl-clipboard
  wlogout
)

install_pkgs install
