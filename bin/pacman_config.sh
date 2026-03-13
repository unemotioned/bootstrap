#!/usr/bin/env bash
set -euo pipefail

FILE='/etc/pacman.conf'

# uncomment Color
if ! grep -q '^Color' "$FILE"; then
  sudo sed -i 's/^#Color/Color/' "$FILE"
fi

# add ILoveCandy after Color
if ! grep -q '^ILoveCandy' "$FILE"; then
  sudo sed -i '/^Color/a ILoveCandy' "$FILE"
fi
