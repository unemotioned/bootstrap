#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed stow github-cli

repo='dotfiles'
dir="$HOME/$repo"

if [ ! -d "$dir" ]; then
  gh repo clone "$NAME"/"$repo" "$dir"
fi

cd "$dir"

rm -rf ~/.config/hypr
rm -rf ~/.config/kitty

mkdir -p ~/.local/share/applications
mkdir -p ~/Pictures/Screenshots

stow --restow --adopt applications
stow --restow bat
stow --restow foot
stow --restow hypr
stow --restow icon
stow --restow kitty
stow --restow lazygit
stow --restow nvim
stow --restow satty
stow --restow sessionizer
stow --restow tmux
stow --restow wallpaper
stow --restow waybar
stow --restow wlogout
stow --restow wofi
stow --restow yazi
# stow --restow zsh-arch
stow --restow fish

rm -rf ~/.cache/bat
bat cache --build

cd "$EXE_PATH"
