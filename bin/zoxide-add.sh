#!/usr/bin/env bash
set -euo pipefail

dirs=(
  "dotfiles"
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
  "personal/bootstrap"
  "personal/tistory"
)

for dir in "${dirs[@]}"; do
  zoxide add "$HOME"/"$dir"
done
