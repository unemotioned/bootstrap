#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
master_dir="$(cd "${script_dir}/.." && pwd)"

source "$script_dir/utils/lib.sh"

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

cp "$master_dir"/asset/mpd/mpd.conf "$mpd_dir"

systemctl --user enable mpd.socket
