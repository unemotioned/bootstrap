#!/usr/bin/env bash
set -euo pipefail

install_pkgs() {
  local -n pkgs="$1"

  yay -S --noconfirm --needed "${pkgs[@]}"
}

change_shell() {
  local new_shell="$1"
  local shell_name="$2"

  if [ "$SHELL" = "$new_shell" ]; then
    echo "Shell is already $shell_name"
  else
    chsh -s "$new_shell"
    echo "Shell changed to $shell_name"
  fi

  export SHELL="$new_shell"
}
