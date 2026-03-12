#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi chafa &>/dev/null; then
  sudo pacman -S --noconfirm chafa
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

clear

echo ''
echo '====================================================='
echo 'Installation and configuration completed successfully'
echo '====================================================='
echo ''
chafa "$SCRIPT_DIR/../archive/hehe_kitty.png"

read -rp 'Reboot now? [y/N] ' answer

if [[ "${answer,,}" == 'y' ]]; then
  echo 'System will reboot now'
  sleep 2 # sleep for 2 seconds
  sudo systemctl reboot
else
  echo 'Reboot cancelled'
fi
