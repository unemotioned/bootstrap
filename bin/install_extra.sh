#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

install=(
  chromium
  discord
  foot
  localsend-bin
  vscodium-bin
)

install_pkgs install
