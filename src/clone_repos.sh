#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed github-cli

clone_repo() {
    local dest="$1"
    local repo="$2"
    local target="$dest/$repo"

    mkdir -p "$dest"

    if [[ -d "$target/.git" ]]; then
        echo "$repo already cloned, skipping"
    else
        echo "Cloning $repo into $dest..."
        gh repo clone "$NAME/$repo" "$target"
    fi

    if git -C "$target" show-ref --verify --quiet refs/heads/dev; then
        echo "dev branch already exists for $repo, skipping"
    else
        echo "Creating dev branch for $repo..."
        git -C "$target" checkout -b dev
    fi
}

clone_repo "$HOME" dotfiles

dev="$HOME/dev"
clone_repo "$dev" dsa
clone_repo "$dev" english-test
clone_repo "$dev" guessing-game.rs
clone_repo "$dev" student-grader

personal="$HOME/personal"
clone_repo "$personal" bootstrap
clone_repo "$personal" tistory

repo="$HOME/repo"
clone_repo "$repo" tmux-tokyo-night
clone_repo "$repo" tokyonight.nvim
