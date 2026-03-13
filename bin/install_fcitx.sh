#!/usr/bin/env bash
set -euo pipefail

. ../src/lib.sh

install=(
  "fcitx5-configtool"
  "fcitx5-hangul"
  "fcitx5-im"
)

install_pkgs install
