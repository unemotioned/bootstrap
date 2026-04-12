#!/usr/bin/env bash
set -euo pipefail

file='/etc/pacman.conf'

# uncomment Color
if ! grep -q '^Color' "$file"; then
    sudo sed -i 's/^#Color/Color/' "$file"
fi

# add ILoveCandy after Color
if ! grep -q '^ILoveCandy' "$file"; then
    sudo sed -i '/^Color/a ILoveCandy' "$file"
fi
