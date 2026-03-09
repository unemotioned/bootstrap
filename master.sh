#!/usr/bin/env bash

set -euo pipefail

. ./bin/install-yay.sh

. ./bin/sort-mirror-list.sh

. ./bin/paccache.sh

. ./bin/install-brillo.sh

. ./bin/term-env.sh

. ./bin/install-yazi.sh

. ./bin/install-tmux.sh

. ./bin/install-nvim.sh

. ./bin/remove-orphaned.sh

. ./bin/clone-dotfiles.sh

. ./bin/install-fonts.sh
