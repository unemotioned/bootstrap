#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed pacman-contrib

# every week
# keep latest 3
sudo systemctl enable paccache.timer
