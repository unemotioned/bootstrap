#!/usr/bin/env bash
set -euo pipefail

dirs=(
  dotfiles
  .config
  .config/foot
  .config/hypr
  .config/kitty
  .config/lazygit
  .config/nvim
  .config/waybar
  .config/wlogout
  .config/wofi
  .config/yazi
  .local/scripts
  personal
  personal/bootstrap
  personal/tistory
  Pictures/Wallpapers
  Pictures/Screenshots
  repo
  repo/tmux-tokyo-night
  repo/tokyonight.nvim
)

for dir in "${dirs[@]}"; do
  path="$HOME/$dir"

  if [ -d "$path" ]; then
    zoxide add "$path"
    echo "Added '$path' to zoxide."
  else
    echo "'$path' does not exists."
  fi
done
