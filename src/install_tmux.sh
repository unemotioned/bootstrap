#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed tmux

tpm_dir="$HOME/.tmux/plugins/tpm"

if [ -d "$tpm_dir" ]; then
    echo "TPM is already installed."
else
    echo "Installing TPM"
    git clone https://github.com/tmux-plugins/tpm "$tpm_dir"
fi
