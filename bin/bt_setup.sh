#!/usr/bin/env bash
set -euo pipefail

. ../src/lib.sh

install=(
  'bluez'
  'bluez-utils'
  'bluetui'
)

install_pkgs install

sudo systemctl enable bluetooth.service
