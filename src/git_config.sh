#!/usr/bin/env bash
set -euo pipefail

git config --global user.name "$NAME"

if [ -z "$(git config --global user.email)" ]; then
    read -rp 'Git user email: ' git_email
    git config --global user.email "$git_email"
fi
