#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

install=(
  'cliphist'
  'hypridle'
  'hyprlock'
  'hyprpaper'
  'hyprpicker'
  'hyprshot'
  'satty'
  'waybar'
  'wl-clipboard'
  'wlogout'
)

install_pkgs install
