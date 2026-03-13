#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

install=(
  fcitx5-configtool
  fcitx5-hangul
  fcitx5-im
)

install_pkgs install
