#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
master_dir="$(cd "${script_dir}/.." && pwd)"

repo="$HOME/repo"
bril="$repo/brillo"

if pacman -Qi brillo &>/dev/null; then
    echo 'brillo already installed'
    exit 0
fi

sudo pacman -S --noconfirm --needed go-md2man

mkdir -p "$repo"
cd "$repo"

if [ -d "$bril" ]; then
    echo "brillo already cloned"
else
    git clone https://gitlab.com/cameronnemo/brillo.git
fi

cd "$bril"
sudo make install.setgid

if pacman -Qi brightnessctl &>/dev/null; then
    sudo pacman -Rns --noconfirm brightnessctl
fi

cd "$master_dir"
