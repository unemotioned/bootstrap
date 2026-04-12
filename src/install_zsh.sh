#!/usr/bin/env bash
set -euo pipefail

. "$EXE_PATH"/src/utils/lib.sh

# shellcheck disable=SC2034
install=(
    oh-my-zsh-git
    zsh
    zsh-autosuggestions
    zsh-fast-syntax-highlighting
    zsh-theme-powerlevel10k
)

zsh_path=$(which zsh)
shell_name=$(basename "$(which zsh)")

install_pkgs install

change_shell "$zsh_path" "$shell_name"
