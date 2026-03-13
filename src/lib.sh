#!/usr/bin/env bash
set -euo pipefail

install_pkg() {
  local pkg="$1"
  if ! pacman -Qi "$pkg" &>/dev/null; then
    sudo pacman -S --noconfirm "$pkg"
  fi
}

install_pkgs() {
  local pkgs=("$@")
  local missing=()
  for pkg in "${pkgs[@]}"; do
    if ! pacman -Qi "$pkg" &>/dev/null; then
      missing+=("$pkg")
    fi
  done
  if [ ${#missing[@]} -gt 0 ]; then
    sudo pacman -S --noconfirm --needed "${missing[@]}"
  fi
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
