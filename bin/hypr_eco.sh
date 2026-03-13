#!/usr/bin/env bash
set -euo pipefail

. ../src/lib.sh

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
