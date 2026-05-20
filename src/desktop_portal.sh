#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
)

install_pkgs install

systemctl --user enable xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland
