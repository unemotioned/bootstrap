#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed reflector

LIST='/etc/pacman.d/mirrorlist'

# sort 10 fastest servers
sudo reflector --verbose --latest 10 --protocol https --sort rate --save "$LIST"

# update pacman
sudo pacman -Syu --noconfirm
