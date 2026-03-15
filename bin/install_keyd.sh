#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed keyd

dir='/etc/keyd'
def="$dir/default.conf"
kbd="$dir/kbd.conf"
ball="$dir/ball.conf"

sudo mkdir -p "$dir"

if [ ! -f "$def" ]; then
  sudo tee "$def" <<EOF
[ids]

*

[main]

rightalt = f16
EOF
fi

if [ ! -f "$kbd" ]; then
  sudo tee "$kbd" <<EOF
[ids]

# AT Translated Set 2 keyboard
0001:0001:09b4e68d

[main]

rightalt = f16
capslock = overload(control, esc)
esc = capslock
EOF
fi

if [ ! -f "$ball" ]; then
  sudo tee "$ball" <<EOF
[ids]

# splitkb.com Aurora Sofle v2 rev1
047d:2041:14bbedc4

[main]

rightmouse = mouse1
mouse1 = rightmouse
EOF
fi

if ! systemctl is-active --quiet keyd; then
  sudo systemctl enable --now keyd
fi
