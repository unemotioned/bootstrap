#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed reflector

LIST='/etc/pacman.d/mirrorlist'

read -rp 'Sort mirror list? [Y/n]' answer

if [[ "${answer,,}" == 'y' || -z "${answer}" ]]; then
  # sort 10 fastest servers
  sudo reflector --verbose --latest 10 --protocol https --sort rate --save "$LIST"
  # update pacman
  sudo pacman -Syu --noconfirm
elif [[ "${answer,,}" == 'n' ]]; then
  echo "Skipping mirror list sort."
else
  echo "Invalid input. Skipping mirror list sort."
fi
