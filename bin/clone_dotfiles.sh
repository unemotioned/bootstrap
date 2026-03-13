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
REPO='dotfiles'

if [ ! -d "$HOME/$REPO" ]; then
  gh repo clone "$USER"/"$REPO" "$HOME"/"$REPO"
fi

cd "$HOME"/"$REPO"

rm -rf ~/.config/hypr
rm -rf ~/.config/kitty

mkdir -p ~/.local/share/applications
mkdir -p "$HOME"/Pictures/Screenshots

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
