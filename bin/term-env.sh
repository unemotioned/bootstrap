#!/usr/bin/env bash

set -euo pipefail

if ! command -v zsh &>/dev/null; then
  yay -S --noconfirm zsh
fi

ZSH_PATH=$(which zsh)

if [ "$SHELL" = "$ZSH_PATH" ]; then
  echo 'ZSH is already default shell.'
  exit 0
fi

chsh -S "$ZSH_PATH"

echo 'Default shell changed to ZSH. Log out and back in for the change to take effect.'

sudo pacman -S --noconfirm --needed\
  bat\
  eza\
  fd\
  fzf\
  git\
  git-delta\
  lazygit\
  man-deb\
  man-pages\
  stow\
  zoxide\
  zsh-autosuggestions\
  zsh-history-substring-search


yay -S --noconfirm --needed\
  oh-my-zsh\
  pfetch-rs-bin\
  powerlevel10k\
  zsh-fast-syntax-highlighting
