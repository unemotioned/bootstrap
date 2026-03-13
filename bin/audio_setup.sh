#!/usr/bin/env bash
set -euo pipefail

# TODO: move bolt(thunder bolt i/o) to somewhre else

sudo pacman -S --noconfirm --needed\
  bolt\
  pavucontrol\
  pipewire-audio\
  pipewire-pulse\
  sof-firmware

systemctl --user enable --now pipewire pipewire-pulse wireplumber
