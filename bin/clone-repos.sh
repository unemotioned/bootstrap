#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi github-cli &>/dev/null; then
  echo 'github-cli is not installed'
  exit 0
fi

# TODO: do the following

# check if cloned already
# mkdir
# clone w/ gh
# checkout -b dev

# ~/dev
# student-grader
# english-test
# guessing-game.rs

# ~/personal/
# tistory

# ~/repo
# tmux-tokyo-night
# tokyonight.nvim
