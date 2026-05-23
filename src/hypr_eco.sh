#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    hypridle
    hyprlock
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprshot
    hyprshutdown
    satty # screenshot annotation tool
    waybar
    wl-clipboard
    wlogout
)

install_pkgs install

systemctl --user enable --now hyprpolkitagent.service
