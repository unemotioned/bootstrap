#!/usr/bin/env bash

set -euo pipefail

. ./bin/install-yay.sh

. ./bin/install-reflector.sh
# . ./bin/sort-mirror-list.sh # comment out when testing

. ./bin/install-zsh.sh
. ./bin/change-shell.sh
. ./bin/install-omz.sh
. ./bin/install-p10k.sh
. ./bin/install-omz-plugins.sh

. ./bin/install-bat.sh
. ./bin/install-eza.sh
. ./bin/install-fzf.sh
. ./bin/install-zoxide.sh

. ./bin/install-tmux.sh

. ./bin/install-stow.sh
. ./bin/clone-dotfiles.sh

. ./bin/install-firefox.sh
. ./bin/install-discord.sh
. ./bin/install-vscodium.sh
. ./bin/install-foot.sh

. ./bin/remove-orphaned.sh
