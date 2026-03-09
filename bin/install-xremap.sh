#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --noconfirm --needed libinput-tools

yay -S --noconfirm --needed xremap-hypr-bin
