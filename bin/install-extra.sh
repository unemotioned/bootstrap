#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  discord\
  firefox\
  foot\
  opencode\
  impala

yay -S --noconfirm --needed\
  vscodium-bin\
  localsend-bin
