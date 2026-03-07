#!/usr/bin/env bash

set -euo pipefail

. ./bin/install-yay.sh

. ./bin/install-reflector.sh
# . ./bin/sort-mirror-list.sh # comment out when testing

. ./bin/install-zsh.sh
. ./bin/change-shell.sh

. ./bin/install-tmux.sh

. ./bin/install-stow.sh
. ./bin/clone-dotfiles.sh

. ./bin/remove-orphaned.sh
