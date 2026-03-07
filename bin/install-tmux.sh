#!/usr/bin/env bash

set -euo pipefail

yay -S --noconfirm --needed tmux

# Check if TMUX is installed
if ! command -v tmux &>/dev/null; then
  echo "TMUX is not installed."
  exit 1
fi

TPM_DIR="$HOME/.tmux/plugins/tpm"

# Check if TPM is already installed
if [ -d "$TPM_DIR" ]; then
  echo "TPM is already installed."
else
  echo "Installing TPM"
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

echo "TPM installed."
