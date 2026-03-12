#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  impala\
  dhcpcd

sudo systemctl disable --now NetworkManager
sudo systemctl enable --now iwd
sudo systemctl enable --now dhcpcd
