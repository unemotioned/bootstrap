#!/usr/bin/env bash
set -euo pipefail

# GTK Wi-Fi connection manager
if ! yay -Qi nmgui-bin &>/dev/null; then
  yay -S --noconfirm nmgui-bin
fi
