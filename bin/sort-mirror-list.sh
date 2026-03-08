#!/usr/bin/env bash

set -euo pipefail

if ! command -v reflector &>/dev/null; then
  yay -S --noconfirm reflector
fi

# sort 10 fastest servers
sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# update pacman
sudo pacman -Sy
