#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed stow github-cli

dir="$HOME/dotfiles"

if [ ! -d "$dir" ]; then
  git clone https://github.com/unemotioned/dotfiles.git "$dir"
fi

cd "$dir"

rm -rf ~/.config/hypr
rm -rf ~/.config/kitty

mkdir -p ~/.local/share/applications
mkdir -p ~/Pictures/Screenshots

stow --restow --adopt applications
stow --restow bat
stow --restow btop
stow --restow fastfetch
# stow --restow fish
stow --restow foot
stow --restow hypr
stow --restow icons
stow --restow kitty
stow --restow lazygit
stow --restow nvim
stow --restow satty
stow --restow sessionizer
# stow --restow starship
stow --restow tmux
stow --restow wallpapers
stow --restow waybar
stow --restow wlogout
stow --restow wofi
stow --restow yazi
stow --restow zsh-arch

rm -rf ~/.cache/bat
bat cache --build

cd "$EXE_PATH"
