#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
  hypridle
  hyprlock
  hyprpaper
  hyprpicker
  hyprshot
  satty # screenshot annotation tool
  waybar
  wl-clipboard
  wlogout
)

install_pkgs install
