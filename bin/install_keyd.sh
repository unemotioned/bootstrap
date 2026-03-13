#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed keyd

DIR='/etc/keyd'
DEF="$DIR/default.conf"
KBD="$DIR/kbd.conf"
BALL="$DIR/ball.conf"

sudo mkdir -p "$DIR"

if [ ! -f "$DEF" ]; then
  sudo tee "$DEF" <<EOF
[ids]

*

[main]

rightalt = f16
EOF
fi

if [ ! -f "$KBD" ]; then
  sudo tee "$KBD" <<EOF
[ids]

# AT Translated Set 2 keyboard
0001:0001:09b4e68d

[main]

rightalt = f16
capslock = overload(control, esc)
esc = capslock
EOF
fi

if [ ! -f "$BALL" ]; then
  sudo tee "$BALL" <<EOF
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
