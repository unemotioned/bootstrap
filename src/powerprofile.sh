#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed power-profiles-daemon python-gobject

if ! systemctl is-enabled --quiet power-profiles-daemon; then
  sudo systemctl enable --now power-profiles-daemon
fi

status="$(powerprofilesctl get)"

mode='performance' # power-saver | balanced | performance

if [ ! "$status" = "$mode" ]; then
  powerprofilesctl set "$mode"
  echo 'power-profiles-daemon is now set to "Performance" mode'
fi
