#!/usr/bin/env bash

set -e

# Install git if not already installed
if ! command -v git &>/dev/null; then
  sudo pacman -Syu --noconfirm git
fi
