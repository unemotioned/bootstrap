#!/usr/bin/env bash
set -euo pipefail

mkdir "$HOME"/Pictures/Screenshots

dirs=(
  "dotfiles"
  ".config"
  ".config/foot"
  ".config/hypr"
  ".config/kitty"
  ".config/lazygit"
  ".config/nvim"
  ".config/waybar"
  ".config/wlogout"
  ".config/wofi"
  ".config/xremap"
  ".config/yazi"
  ".local/scripts"
  "personal/bootstrap"
  "personal/tistory"
  "Pictures/Wallpapers"
  "Pictures/Screenshots"
)

for dir in "${dirs[@]}"; do
  zoxide add "$HOME"/"$dir"
done
