#!/usr/bin/env bash

set -euo pipefail

if ! command -v stow &>/dev/null; then
  echo 'Stow is not installed.'
  exit 1
fi

if [ ! -d ~/dotfiles ]; then
  git clone git@github.com:UnEmotioneD/dotfiles.git ~/dotfiles
fi

cd ~/dotfiles

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
stow wlogouit
stow wofi
stow xremap
stow yazi
stow zsh-arch

cd ~
