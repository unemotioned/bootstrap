#!/usr/bin/env bash
set -euo pipefail

# standardize directories
xdg-user-dirs-update

mkdir -p ~/playground

dirs=(
  .config
  .config/fish
  .config/foot
  .config/hypr
  .config/kitty
  .config/nvim
  .config/starship
  .config/waybar
  .config/fastfetch
  .local
  .local/scripts
  Documents
  Downloads
  Pictures
  Pictures/Screenshots
  Pictures/Wallpapers
  dotfiles
  personal
  personal/bootstrap
  personal/tistory
  playground
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
