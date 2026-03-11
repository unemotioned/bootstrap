#!/usr/bin/env bash
set -euo pipefail

for pkg in "${PACKAGES[@]}"; do
  yay -S --noconfim --needed "$pkg"
done
