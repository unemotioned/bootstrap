#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
  chromium
  discord
  foot
  btop
  localsend-bin
  vscodium-bin
)

install_pkgs install
