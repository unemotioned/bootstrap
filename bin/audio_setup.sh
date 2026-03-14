#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# TODO: move bolt to somewhere else

# shellcheck disable=SC2034
install=(
  bolt
  pavucontrol
  pipewire-audio
  pipewire-pulse
  sof-firmware
)

install_pkgs install

systemctl --user enable --now pipewire pipewire-pulse wireplumber
