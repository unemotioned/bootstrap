#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  power-profiles-daemon
  python-gobject
)

install_pkgs install

status="$(powerprofilesctl get)"

mode='performance' # power-saver | balanced | performance

if [ ! "$status" = "$mode" ]; then
  powerprofilesctl set "$mode"
  echo 'power-profiles-daemon is now set to "Performance" mode'
fi
