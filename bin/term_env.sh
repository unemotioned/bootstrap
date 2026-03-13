#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi zsh &>/dev/null; then
  sudo pacman -S --noconfirm zsh
fi

ZSH_PATH=$(which zsh)

if [ "$SHELL" = "$ZSH_PATH" ]; then
  echo 'ZSH is already default shell.'
else
  chsh -s "$ZSH_PATH"
  echo 'Default shell changed to ZSH. Log out and back in for the change to take effect.'
fi

sudo pacman -S --noconfirm --needed\
  bat\
  eza\
  fd\
  fzf\
  git\
  git-delta\
  github-cli\
  lazygit\
  man-db\
  man-pages\
  zoxide\
  zsh-autosuggestions\
  zsh-history-substring-search


yay -S --noconfirm --needed\
  oh-my-zsh-git\
  pfetch-rs-bin\
  zsh-theme-powerlevel10k\
  zsh-fast-syntax-highlighting
