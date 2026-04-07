#!/usr/bin/env bash
set -euo pipefail

git config --global user.name "$NAME"

if [ -z "$(git config --global user.email)" ]; then
  read -rp 'Git user email: ' git_email
  git config --global user.email "$git_email"
fi

git config --global init.defaultBranch main

git config --global core.pager delta

git config --global interactive.diffFilter 'delta --color-only'

git config --global delta.navigate true
git config --global delta.side-by-side true
git config --global delta.line-numbers true
git config --global delta.syntax-theme 'Visual Studio Dark+'

git config --global merge.conflictstyle zdiff3

git config --global diff.colorMoved default
