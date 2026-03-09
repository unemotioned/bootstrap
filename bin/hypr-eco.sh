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
  wl-clipboard\
  wlogout\

yay -S --noconfirm --needed\
  cliphist
