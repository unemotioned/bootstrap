#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --noconfirm --needed\
  bolt\
  pavucontrol\
  pipewire-audio\
  sof-firmware

systemctl --user enable --now pipewire pipewire-pulse wireplumber
