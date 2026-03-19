#!/usr/bin/env bash
set -euo pipefail

# standardize directories
xdg-user-dirs-update

mkdir -p ~/playground

dirs=(
  dotfiles
  .config
  .config/hypr
  .config/kitty
  .config/nvim
  .config/fastfetch
  .local
  .local/scripts
  personal
  personal/bootstrap
  personal/tistory
  Pictures
  Pictures/Wallpapers
  Pictures/Screenshots
  repo
  repo/tmux-tokyo-night
  repo/tokyonight.nvim
  Documents
  Downloads
  playground
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
