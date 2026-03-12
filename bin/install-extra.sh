#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  discord\
  firefox\
  foot\
  opencode\
  impala\
  dhcpcd


yay -S --noconfirm --needed\
  vscodium-bin\
  localsend-bin

sudo systemctl disable --now NetworkManager
sudo systemctl enable --now iwd
sudo systemctl enable --now dhcpcd
