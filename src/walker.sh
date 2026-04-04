#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
  walker-bin
  elephant-archlinuxpkgs
  elephant-bluetooth
  elephant-calc
  elephant-clipboard
  elephant-runner
  elephant-symbols
  elephant-websearch
  elephant-windows
)

install_pkgs install
