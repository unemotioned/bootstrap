#!/usr/bin/env bash

set -euo pipefail

if ! pacman -Qi tmux &>/dev/null; then
  sudo pacman -S --noconfirm tmux
fi

TPM_DIR="$HOME/.tmux/plugins/tpm"

# Check if TPM is already installed
if [ -d "$TPM_DIR" ]; then
  echo "TPM is already installed."
else
  echo "Installing TPM"
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi
