#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    bluez
    bluez-utils
    bluetui
)

install_pkgs install

sudo systemctl enable bluetooth.service
