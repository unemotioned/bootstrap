#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
    btop
    chromium
    discord
    foot
    gnome-clocks
    localsend-bin
    vscodium-bin
)

install_pkgs install
