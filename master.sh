#!/usr/bin/env bash

set -euo pipefail

. ./bin/install-yay.sh

. ./bin/sort-mirror-list.sh

. ./bin/change-shell.sh

. ./bin/install-tmux.sh

. ./bin/remove-orphaned.sh

. ./bin/clone-dotfiles.sh
