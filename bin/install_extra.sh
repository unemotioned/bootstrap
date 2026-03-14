#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  chromium
  discord
  foot
  localsend-bin
  vscodium-bin
)

install_pkgs install
