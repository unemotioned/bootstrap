#!/usr/bin/env bash
set -euo pipefail

DIR="$HOME/.config/systemd/user"
FILE='xremap.service'

mkdir -p "$DIR"

cat >"$DIR"/"$FILE" <<EOF
[Unit]
Description=xremap key remapper
After=graphical-session.target

[Service]
ExecStart=/usr/bin/xremap --device "Kensington Slimblade Trackball" %h/.config/xremap/config.yml
Restart=on-failure

[Install]
WantedBy=default.target
EOF

if ! pacman -Qi xremap-hypr-bin &>/dev/null; then
  yay -S --noconfirm xremap-hypr-bin
fi

if ! pacman -Qi libinput-tools &>/dev/null; then
  sudo pacman -S --noconfirm libinput-tools
fi

systemctl --user daemon-reload
systemctl --user enable --now xremap.service
