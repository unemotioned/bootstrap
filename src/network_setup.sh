#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed impala iwd dhcpcd

# disable auto start
if [ -f /etc/xdg/autostart/nm-applet.desktop ]; then
  sudo sh -c 'echo "Hidden=true" >> /etc/xdg/autostart/nm-applet.desktop'
fi

sudo systemctl disable NetworkManager
sudo systemctl enable iwd

# configure dhcp for faster connection
iwd_dir='/etc/iwd'
sudo mkdir -p "$iwd_dir"
sudo cp "$EXE_PATH/asset/iwd/main.conf" "$iwd_dir"

# prioritize wired connection higher wifi
network_dir='/etc/systemd/network'
sudo mkdir -p "$network_dir"
sudo cp "$EXE_PATH/asset/iwd/20-wired.network" "$network_dir"

if ! ping -c 1 -W 1 8.8.8.8 &>/dev/null; then
  read -r -p "Wi-Fi SSID: " ssid
  read -r -sp "Wi-Fi PW: " password
  echo

  device=$(iwctl device list | awk '/wlan/ {print $2; exit}')
  iwctl --passphrase="$password" station "$device" connect "$ssid"
fi
