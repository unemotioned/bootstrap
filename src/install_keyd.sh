#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed keyd

dir='/etc/keyd'
all="$dir/all.conf"
builtin="$dir/builtin.conf"
trackball="$dir/trackball.conf"

asset="$EXE_PATH/asset/keyd"

sudo mkdir -p "$dir"

if [ ! -f "$all" ]; then
    sudo cp "$asset/all.conf" "$dir"
fi

if [ ! -f "$builtin" ]; then
    sudo cp "$asset/builtin.conf" "$dir"
fi

if [ ! -f "$trackball" ]; then
    sudo cp "$asset/trackball.conf" "$dir"
fi

if ! systemctl is-active --quiet keyd; then
    sudo systemctl enable keyd
fi
