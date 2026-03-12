#!/usr/bin/env bash
set -e

if pacman -Qi networkmanager-applet >/dev/null; then
  sudo pacman -Rns --noconfirm networkmanager-applet
fi

if [ -f '/etc/xdg/autostart/nm-applet.desktop' ]; then
  rm -f /etc/xdg/autostart/nm-applet.desktop
fi
