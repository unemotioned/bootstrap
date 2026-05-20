#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    base-devel
    lsof
    neovim
    nodejs-lts-krypton
    noto-fonts-emoji
    npm
    pnpm
    tree-sitter-cli
    unzip
    wl-clipboard
    yarn
)

install_pkgs install
