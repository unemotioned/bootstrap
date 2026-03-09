#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  bluez\
  bluez-utils

yay -S --noconfirm --needed overskride

sudo systemctl start bluetooth.service
