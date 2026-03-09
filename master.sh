#!/usr/bin/env bash

set -euo pipefail

REPO="repo"
# ./bin/install-yay.sh
# ./bin/install-brillo.sh

. ./bin/pacman-config.sh

. ./bin/linux-related.sh

. ./bin/install-yay.sh

. ./bin/sort-mirror-list.sh

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

. ./bin/install-tmux.sh

. ./bin/install-nvim.sh

. ./bin/install-fonts.sh

. ./bin/install-nautilus.sh

. ./bin/install-extra.sh

. ./bin/remove-orphaned.sh

. ./bin/clone-dotfiles.sh

. ./bin/prompt-reboot.sh
