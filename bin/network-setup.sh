#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  impala\
  dhcpcd

# disable auto start
if [ -f /etc/xdg/autostart/nm-applet.desktop ]; then
  sudo sh -c 'echo "Hidden=true" >> /etc/xdg/autostart/nm-applet.desktop'
fi

sudo systemctl disable --now NetworkManager
sudo systemctl enable --now iwd
sudo systemctl enable --now dhcpcd
