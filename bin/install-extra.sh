#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --noconfirm --needed\
  discord\
  firefox\
  foot

yay -S --noconfirm --needed\
  vscodium-bin
