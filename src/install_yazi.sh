#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
    yazi
    7zip
    jq
    poppler
    fd
    ripgrep
    fzf
    zoxide
    resvg
    imagemagick
)

install_pkgs install
