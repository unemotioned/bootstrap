#!/usr/bin/env bash
set -euo pipefail

install_pkgs() {
  local -n pkgs="$1"
  yay -S --noconfirm --needed "${pkgs[@]}"
}

ensure_dir() {
  local dir="$1"
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
  fi
}

git_clone_if_missing() {
  local url="$1"
  local dir="$2"
  if [ ! -d "$dir" ]; then
    git clone "$url" "$dir"
  fi
}

run_if_missing() {
  local cmd="$1"
  local pkg="$2"
  if ! command -v "$cmd" &>/dev/null && ! pacman -Qi "$pkg" &>/dev/null; then
    return 1
  fi
  if ! command -v "$cmd" &>/dev/null; then
    return 1
  fi
  return 0
}
