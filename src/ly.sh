#!/usr/bin/env bash
set -euo pipefail

tty=2

prev_mgr='sddm'
prev_mgr_tty=1

sudo pacman -S --noconfirm --needed ly

sudo systemctl enable ly@tty"$tty".service
# disable getty from tty2 which is where ly will run
sudo systemctl disable getty@tty"$tty".service

if pacman -Qi "$prev_mgr" &>/dev/null; then
    sudo systemctl disable "$prev_mgr"
    sudo systemctl disable getty@tty"$prev_mgr_tty".service
    sudo pacman -Rns "$prev_mgr"
fi
