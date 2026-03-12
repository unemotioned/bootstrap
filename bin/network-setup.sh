#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  iwd\
  impala\
  dhcpcd

# disable auto start
if [ -f /etc/xdg/autostart/nm-applet.desktop ]; then
  sudo sh -c 'echo "Hidden=true" >> /etc/xdg/autostart/nm-applet.desktop'
fi

sudo systemctl disable --now NetworkManager
sudo systemctl enable --now iwd
sudo systemctl enable --now dhcpcd

if ! ping -c 1 -W 1 8.8.8.8 &>/dev/null; then
  read -r -p "WiFi SSID: " ssid
  read -r -sp "WiFi Password: " password
  echo

  device=$(iwctl device list | awk '/wlan/ {print $2; exit}')
  iwctl --passphrase="$password" station "$device" connect "$ssid"
  dhcpcd "$device"
fi
