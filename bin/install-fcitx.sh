#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  fcitx5-configtool\
  fcitx5-hangul\
  fcitx5-im
