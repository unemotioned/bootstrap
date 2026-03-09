#!/usr/bin/env bash

set -euo pipefail


if command -v nautilus &>/dev/null; then
  echo 'nautillus already installed'
else
  sudo pacman -S --noconfirm nautilus
fi

# TODO: uninstall previous file explrorer
