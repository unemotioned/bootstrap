#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  power-profiles-daemon\
  python-gobject

status="$(powerprofilesctl get)"

mode='performance' # power-saver | balanced | performance

if [ ! "$status" = "$mode" ]; then
  powerprofilesctl set "$mode"
  echo 'power-profiles-daemon is now set to "Performance" mode'
fi
