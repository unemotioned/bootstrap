#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi github-cli &>/dev/null; then
  echo 'github-cli is not installed'
  exit 0
fi

clone_repo() {
  local dest="$1"
  local repo="$2"
  local target="$dest/$repo"

  mkdir -p "$dest"

  if [[ -d "$target/.git" ]]; then
    echo "$repo already cloned, skipping"
  else
    echo "Cloning $repo into $dest..."
    gh repo clone "UnEmotioneD/$repo" "$target"
  fi

  if git -C "$target" show-ref --verify --quiet refs/heads/dev; then
    echo "dev branch already exists for $repo, skipping"
  else
    echo "Creating dev branch for $repo..."
    git -C "$target" checkout -b dev
  fi
}

# ~/dev
clone_repo "$HOME/dev" student-grader
clone_repo "$HOME/dev" english-test
clone_repo "$HOME/dev" guessing-game.rs

# ~/personal
clone_repo "$HOME/personal" bootstrap
clone_repo "$HOME/personal" tistory

# ~/repo
clone_repo "$HOME/repo" tmux-tokyo-night
clone_repo "$HOME/repo" tokyonight.nvim
