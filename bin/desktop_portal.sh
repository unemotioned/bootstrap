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

systemctl --user start xdg-desktop-portal
systemctl --user start xdg-desktop-portal-gtk
systemctl --user start xdg-desktop-portal-hyprland
