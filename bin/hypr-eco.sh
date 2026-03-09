#!/usr/bin/env bash

set -euo pipefail

# TODO: change hyprshot functionality with satty

sudo pacman -S --noconfirm --needed\
  hypridle\
  hyprlock\
  hyprpaper\
  hyprpicker\
  hyprshot\
  waybar\
  wlogout\
  satty

yay -S --noconfirm --needed\
  cliphist\
  wl-clipboard
