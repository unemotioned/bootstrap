#!/usr/bin/env bash
set -euo pipefail

OG_DIR="$(pwd)"

. ./bin/powerprofile.sh
. ./bin/pacman-config.sh
. ./bin/grub-config.sh
. ./bin/sort-mirror-list.sh
. ./bin/install-yay.sh
. ./bin/paccache.sh
. ./bin/install-brillo.sh
. ./bin/audio-setup.sh
. ./bin/install-fcitx.sh
. ./bin/install-keyd.sh
. ./bin/hypr-eco.sh
. ./bin/install-lang.sh
. ./bin/term-env.sh
. ./bin/install-yazi.sh
. ./bin/install-nvim.sh
. ./bin/install-fonts.sh
. ./bin/install-nautilus.sh
. ./bin/install-extra.sh
. ./bin/git-config.sh
. ./bin/gh-setup.sh
. ./bin/remove-orphaned.sh
. ./bin/clone-dotfiles.sh
. ./bin/clone-repos.sh
. ./bin/zoxide-add.sh
. ./bin/install-tmux.sh
. ./bin/bt-setup.sh
. ./bin/network-setup.sh
. ./bin/remove-bash-files.sh

. ./bin/prompt-reboot.sh
