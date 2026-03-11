#!/usr/bin/env bash
set -euo pipefail

for pkg in "${PACKAGES[@]}"; do
  yay -S --noconfirm --needed "$pkg"
done
