#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed keyd

dir='/etc/keyd'
def="$dir/all.conf"
kbd="$dir/builtin.conf"
ball="$dir/trackball.conf"

asset="$EXE_PATH/asset/keyd"

sudo mkdir -p "$dir"

if [ ! -f "$def" ]; then
  sudo cp "$asset/all.conf" "$dir"
fi

if [ ! -f "$kbd" ]; then
  sudo cp "$asset/builtin.conf" "$dir"
fi

if [ ! -f "$ball" ]; then
  sudo cp "$asset/trackball.conf" "$dir"
fi

if ! systemctl is-active --quiet keyd; then
  sudo systemctl enable --now keyd
fi
