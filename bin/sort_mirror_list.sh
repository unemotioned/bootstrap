#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed reflector

mirror='/etc/pacman.d/mirrorlist'

read -rp 'Sort mirror list? [Y/n]: ' answer

if [[ "${answer,,}" == 'y' || -z "${answer}" ]]; then
  # sort 10 fastest servers
  sudo reflector --save "$mirror" --sort rate --verbose --country KR,JP --latest 10 --protocol https
  # update pacman
  sudo pacman -Syu --noconfirm
elif [[ "${answer,,}" == 'n' ]]; then
  echo "Skipping mirror list sort."
else
  echo "Invalid input. Skipping mirror list sort."
fi
