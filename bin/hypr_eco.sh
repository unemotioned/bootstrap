#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  cliphist
  hypridle
  hyprlock
  hyprmon
  hyprpaper
  hyprpicker
  libqalculate
  hyprshot
  satty
  waybar
  wl-clipboard
  wlogout
  wofimoji
)

install_pkgs install
