#!/usr/bin/env bash
set -euo pipefail

OG_DIR="$(pwd)"

. ./bin/powerprofile.sh
. ./bin/git-config.sh
. ./bin/pacman-config.sh
. ./bin/grub-config.sh
. ./bin/linux-related.sh
. ./bin/sort-mirror-list.sh
. ./bin/install-yay.sh
. ./bin/paccache.sh
. ./bin/install-brillo.sh
. ./bin/bt-setup.sh
. ./bin/audio-setup.sh
. ./bin/install-fcitx.sh
. ./bin/install-xremap.sh
. ./bin/hypr-eco.sh
. ./bin/install-lang.sh
. ./bin/term-env.sh
. ./bin/install-yazi.sh
. ./bin/install-nvim.sh
. ./bin/install-fonts.sh
. ./bin/install-nautilus.sh
. ./bin/install-extra.sh
. ./bin/gh-setup.sh
. ./bin/remove-orphaned.sh
. ./bin/clone-dotfiles.sh
. ./bin/clone-repos.sh
. ./bin/install-tmux.sh
#. ./bin/clone-zsh-plugins.sh

. ./bin/disable-nmapplet.sh
. ./bin/zoxide-add.sh

. ./src/prompt-reboot.sh
