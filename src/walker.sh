#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    walker-bin
    elephant-archlinuxpkgs
    elephant-bluetooth
    elephant-calc
    elephant-clipboard
    elephant-symbols
    elephant-websearch
)

install_pkgs install
