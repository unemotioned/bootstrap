#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed tmux

TPM_DIR="$HOME/.tmux/plugins/tpm"

if [ -d "$TPM_DIR" ]; then
  echo "TPM is already installed."
else
  echo "Installing TPM"
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi
