#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  fcitx5-configtool
  fcitx5-hangul
  fcitx5-im
)

install_pkgs install
