#!/usr/bin/env bash
set -euo pipefail

. ../src/lib.sh

# TODO: move bolt to somewhere else

install=(
  'bolt'
  'pavucontrol'
  'pipewire-audio'
  'pipewire-pulse'
  'sof-firmware'
)

install_pkgs install

systemctl --user enable --now pipewire pipewire-pulse wireplumber
