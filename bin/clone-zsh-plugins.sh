#!/usr/bin/env bash
set -euo pipefail

# === Setup ZSH without oh-my-zsh ===

# --depth=1 : latest commit only
# -- (separator) : tells next is not option

# p10k
git clone --depth 1 -- https://github.com/romkatv/powerlevel10k.git
# echo 'source <path>/powerlevel10k.zsh-theme' >>~/.zshrc

# copybuffer
# copypath
# sudo
# macos

# zsh-autosuggestions
git clone --depth 1 -- https://github.com/zsh-users/zsh-autosuggestions
# fast-syntax-highlighting
git clone --depth 1 -- https://github.com/zdharma-continuum/fast-syntax-highlighting.git
