#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  power-profiles-daemon
  python-gobject
)

install_pkgs install

STATUS="$(powerprofilesctl get)"

MODE='performance' # power-saver | balanced | performance

if [ ! "$STATUS" = "$MODE" ]; then
  powerprofilesctl set "$MODE"
  echo 'power-profiles-daemon is now set to "Performance" mode'
fi
