#!/usr/bin/env bash
set -euo pipefail


if pacman -Qi nautilus &>/dev/null; then
  echo 'nautilus already installed'
else
  sudo pacman -S --noconfirm nautilus
fi

# TODO: uninstall previous file explrorer
