#!/usr/bin/env bash
set -euo pipefail

if pacman -Qi rust &>/dev/null; then
  sudo pacman -Rns --noconfirm rust
fi

sudo pacman -S --noconfirm --needed jdk17-openjdk rustup

archlinux-java set java-17-openjdk

rustup default stable
