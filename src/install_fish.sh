#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

sudo pacman -S --noconfirm --needed fish

fish_path="$(which fish)"

shell_name=$(basename "$(which zsh)")

change_shell "$fish_path"
