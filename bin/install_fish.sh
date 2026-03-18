#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed fish starship

fish_path="$(which fish)"

if [ "$SHELL" = "$fish_path" ]; then
  echo 'FISH is already default shell.'
else
  chsh -s "$fish_path"
  echo 'Default shell changed to FISH.'
fi
