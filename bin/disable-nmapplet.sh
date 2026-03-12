#!/usr/bin/env bash
set -e

if pacman -Qi networkmanager-applet >/dev/null; then
    sudo sh -c 'echo "Hidden=true" >> /etc/xdg/autostart/nm-applet.desktop'
    killall -9 nm-applet
    sudo pacman -Rns --noconfirm networkmanager-applet
fi
