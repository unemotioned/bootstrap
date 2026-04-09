#!/usr/bin/env bash
set -euo pipefail

# install vim
yay -S --noconform --needed vim

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install coc-sh dependencies
yay -S --noconform --needed shellcheck shfmt
