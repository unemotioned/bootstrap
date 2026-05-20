#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/utils/lib.sh"

# shellcheck disable=SC2034
install=(
    bolt
    pavucontrol
    pipewire-audio
    pipewire-pulse
    sof-firmware
)

install_pkgs install

systemctl --user enable pipewire pipewire-pulse wireplumber
