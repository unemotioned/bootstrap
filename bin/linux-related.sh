#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --noconfirm --needed\
  linux-firmware\
  linux-lts\
  linux-lts-headers

# Update GRUB config after installing LTS kernel
sudo grub-mkcofig -o /boot/grub/grub.cfg
