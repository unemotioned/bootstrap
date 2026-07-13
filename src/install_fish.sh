#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

sudo pacman -S --noconfirm --needed fish

fish_path="$(which fish)"
shell_name=$(basename "$(which fish)")

change_shell "$fish_path" "$shell_name"
