#!/usr/bin/env bash

set -euo pipefail

# Create Repository directory if it doesn't exist
mkdir -p ~/Repository

# Clone yay AUR helper source if not already present
if [ ! -d ~/Repository/yay ]; then
  cd ~/Repository
  git clone https://aur.archlinux.org/yay.git
fi

# Build and install yay if not already installed
if ! command -v yay &>/dev/null; then
  cd ~/Repository/yay
  makepkg -si --noconfirm
fi

cd ~
