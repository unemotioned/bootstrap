#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi stow &>/dev/null; then
  sudo pacman -S --noconfirm stow
fi

if ! pacman -Qi github-cli &>/dev/null; then
  echo 'github-cli not installed'
  exit 0
fi

USER='UnEmotioneD'
DOT_REPO='dotfiles'

if [ ! -d ~/dotfiles ]; then
  gh repo clone "$USER"/"$DOT_REPO" "$HOME"/"$DOT_REPO"
fi

cd "$HOME"/"$DOT_REPO"

if [ -d ~/.config/kitty ]; then
  rm -rf ~/.config/kitty
fi

mkdir -p ~/.local/share/applications

stow bat
stow foot
stow hypr
stow icon
stow kitty
stow lazygit
stow --adopt link-wofi
stow nvim
stow sessionizer
stow tmux
stow wallpaper
stow waybar
stow wlogout
stow wofi
stow xremap
stow yazi
stow zsh-arch

bat cache --build

cd "$HOME"
