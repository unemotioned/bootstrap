#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  xdg-desktop-portal
  xdg-desktop-portal-gtk
  xdg-desktop-portal-hyprland
)

install_pkgs install

systemctl --user enable xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland
