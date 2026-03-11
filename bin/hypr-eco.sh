#!/usr/bin/env bash
set -euo pipefail

# TODO: change hyprshot functionality with satty

sudo pacman -S --noconfirm --needed\
  hypridle\
  hyprlock\
  hyprpaper\
  hyprpicker\
  hyprshot\
  satty\
  waybar\
  power-profiles-daemon\
  wl-clipboard

yay -S --noconfirm --needed\
  cliphist\
  wlogout
