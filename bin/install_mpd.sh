#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  mpd
  mpc
  rmpc
  cava
)

install_pkgs install

mpd_dir="$HOME"/.config/mpd

mkdir -p "$mpd_dir" "$HOME"/Music/Playlists "$HOME"/.local/share/mpd/database

cp "$EXE_PATH"/asset/mpd/mpd.conf "$mpd_dir"

systemctl --user enable mpd.socket
