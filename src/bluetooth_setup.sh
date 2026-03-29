#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
  bluez
  bluez-utils
  bluetui
)

install_pkgs install

sudo systemctl enable bluetooth.service
