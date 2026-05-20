#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed keyd

keyd_dir='/etc/keyd'
all="$keyd_dir/all.conf"
builtin="$keyd_dir/builtin.conf"
trackball="$keyd_dir/trackball.conf"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
master_dir="$(cd "${script_dir}/.." && pwd)"
asset_dir="$master_dir/asset"

sudo mkdir -p "$keyd_dir"

if [ ! -f "$all" ]; then
    sudo cp "$asset_dir/keyd/all.conf" "$keyd_dir"
fi

if [ ! -f "$builtin" ]; then
    sudo cp "$asset_dir/keyd/builtin.conf" "$keyd_dir"
fi

if [ ! -f "$trackball" ]; then
    sudo cp "$asset_dir/keyd/trackball.conf" "$keyd_dir"
fi

if ! systemctl is-active --quiet keyd; then
    sudo systemctl enable keyd
fi
