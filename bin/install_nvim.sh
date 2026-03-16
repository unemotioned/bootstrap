#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  base-devel
  lsof
  neovim
  nodejs-lts-krypton
  noto-fonts-emoji
  npm
  pnpm
  unzip
  wl-clipboard
  yarn
)

install_pkgs install
