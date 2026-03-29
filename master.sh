#!/usr/bin/env bash
set -euo pipefail

EXE_PATH="$(pwd)"
NAME='unemotioned'

. ./bin/powerprofile.sh
. ./bin/pacman_config.sh
. ./bin/grub_config.sh
. ./bin/sort_mirror_list.sh
. ./bin/install_yay.sh
. ./bin/paccache.sh
. ./bin/install_brillo.sh
. ./bin/audio_setup.sh
. ./bin/install_fcitx.sh
. ./bin/install_keyd.sh
. ./bin/hypr_eco.sh
. ./bin/desktop_portal.sh
. ./bin/install_lang.sh
. ./bin/install_cli_tools.sh
# . ./bin/install_zsh.sh
. ./bin/install_fish.sh
. ./bin/install_yazi.sh
. ./bin/install_nvim.sh
. ./bin/install_fonts.sh
. ./bin/install_nautilus.sh
. ./bin/install_extra.sh
. ./bin/git_config.sh
. ./bin/gh_setup.sh
. ./bin/clone_dotfiles.sh
. ./bin/start_nvim.sh
. ./bin/clone_repos.sh
. ./bin/zoxide_add.sh
. ./bin/install_opencode.sh
. ./bin/install_tmux.sh
. ./bin/install_db.sh
. ./bin/fprint_setup.sh
. ./bin/network_setup.sh
. ./bin/bluetooth_setup.sh
. ./bin/remove_bash_files.sh
. ./bin/remove_orphaned.sh

. ./bin/prompt_reboot.sh
