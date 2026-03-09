#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --noconfirm --needed bluez

yay -S --noconfirm --needed overskride
