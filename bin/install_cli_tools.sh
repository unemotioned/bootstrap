#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

# shellcheck disable=SC2034
install=(
  bat
  eza
  fd
  fzf
  git
  git-delta
  github-cli
  lazygit
  man-db
  man-pages
  pfetch-rs-bin
  zoxide
)

install_pkgs install
