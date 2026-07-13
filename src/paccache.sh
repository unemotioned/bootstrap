#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed pacman-contrib

# runs every week and keep latest 3
sudo systemctl enable paccache.timer
