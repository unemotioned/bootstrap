#!/usr/bin/env bash

set -e

# Clone dotfiles repo if not already present
if [ ! -d ~/dotfiles ]; then
  git clone https://github.com/UnEmotioneD/dotfiles.git ~/dotfiles
fi
