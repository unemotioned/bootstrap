#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed\
  noto-fonts-cjk\
  noto-fonts-emoji\
  otf-font-awesome\
  ttf-iosevka-nerd\
  ttf-jetbrains-mono-nerd

yay -S --noconfirm --needed\
  adobe-source-han-sans-kr-fonts\
  adobe-source-han-serif-kr-fonts

fc-cache -fv
