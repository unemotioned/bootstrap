#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  chromium\
  discord\
  foot\
  opencode\

yay -S --noconfirm --needed\
  vscodium-bin\
  localsend-bin
