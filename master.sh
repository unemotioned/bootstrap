#!/usr/bin/env bash
set -euo pipefail

EXE_PATH="$(pwd)"
NAME='unemotioned'

. ./src/powerprofile.sh
. ./src/pacman_config.sh
. ./src/grub_config.sh
. ./src/sort_mirror_list.sh
. ./src/install_yay.sh
. ./src/paccache.sh
. ./src/install_brillo.sh
. ./src/audio_setup.sh
. ./src/install_fcitx.sh
. ./src/install_keyd.sh
. ./src/hypr_eco.sh
. ./src/walker.sh
. ./src/desktop_portal.sh
. ./src/install_lang.sh
. ./src/install_cli_tools.sh
# . ./src/install_zsh.sh
. ./src/install_fish.sh
. ./src/install_yazi.sh
. ./src/vim.sh
. ./src/install_nvim.sh
. ./src/install_fonts.sh
. ./src/install_nautilus.sh
. ./src/install_extra.sh
. ./src/git_config.sh
. ./src/gh_setup.sh
. ./src/clone_dotfiles.sh
. ./src/start_nvim.sh
. ./src/clone_repos.sh
. ./src/zoxide_add.sh
. ./src/install_opencode.sh
. ./src/install_tmux.sh
. ./src/install_db.sh
. ./src/fprint_setup.sh
. ./src/network_setup.sh
. ./src/bluetooth_setup.sh
. ./src/remove_bash_files.sh
. ./src/remove_orphaned.sh

. ./src/prompt_reboot.sh
