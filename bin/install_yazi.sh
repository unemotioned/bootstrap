#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/lib.sh

install=(
  'yazi'
  '7zip'
  'jq'
  'poppler'
  'fd'
  'ripgrep'
  'fzf'
  'zoxide'
  'resvg'
  'imagemagick'
)

install_pkgs install
