#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed stow github-cli

REPO='dotfiles'
DIR="$HOME/$REPO"

if [ ! -d "$DIR" ]; then
  gh repo clone "$USER"/"$REPO" "$DIR"
fi

cd "$DIR"

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
stow --restow sessionizer
stow --restow tmux
stow --restow wallpaper
stow --restow waybar
stow --restow wlogout
stow --restow wofi
stow --restow yazi
stow --restow zsh-arch

rm -rf ~/.cache/bat
bat cache --build

cd "$EXE_PATH"
