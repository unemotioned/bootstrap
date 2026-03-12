#!/usr/bin/env bash
set -e

if ! pacman -Qi &>/dev/null; then
  sudo pacman -S --noconfirm power-profiles-daemon
fi

if ! pacman -Qi python-gobject &>/dev/null; then
  sudo pacman -S --noconfirm python-gobject
fi

STATUS="$(powerprofilesctl get)"

PERF='performance' # power-saver | balanced

if [ ! "$STATUS" = "$PERF" ]; then
  powerprofilesctl set "$PERF"
  echo 'power-profiles-daemon is now set "Performance" mode.'
fi
