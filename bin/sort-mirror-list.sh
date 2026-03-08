#!/usr/bin/env bash

set -euo pipefail

yay -S --noconfirm --needed reflector

# sort 10 fastest servers
sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# update pacman
sudo pacman -Sy
