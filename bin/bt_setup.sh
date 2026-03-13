#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

install=(
  'bluez'
  'bluez-utils'
  'bluetui'
)

install_pkgs install

sudo systemctl enable bluetooth.service
