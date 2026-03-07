#!/usr/bin/env bash

set -euo pipefail

if ! command -v zsh &>/dev/null; then
  yay -S --noconfirm --needed zsh
fi
