#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed pacman-contrib

# every week
# keep lateset 3
sudo systemctl enable paccache.timer
