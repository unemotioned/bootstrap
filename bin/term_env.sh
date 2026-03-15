#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  bat
  eza
  fd
  fzf
  git
  git-delta
  github-cli
  lazygit
  man-db
  man-pages
  oh-my-zsh-git
  pfetch-rs-bin
  zoxide
  zsh
  zsh-autosuggestions
  zsh-fast-syntax-highlighting
  zsh-history-substring-search
  zsh-theme-powerlevel10k
)

install_pkgs install

zsh_path=$(which zsh)

if [ "$SHELL" = "$zsh_path" ]; then
  echo 'ZSH is already default shell.'
else
  chsh -s "$zsh_path"
  echo 'Default shell changed to ZSH.'
fi
