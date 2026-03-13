#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HEHE_KITTY="$SCRIPT_DIR/../archive/hehe_kitty.png"

clear

echo ''
echo '======================================================'
echo 'Installation and configuration completed successfully.'
echo '======================================================'
echo ''

if [ -f "$HEHE_KITTY" ]; then
  chafa "$HEHE_KITTY"
fi

read -rp 'Reboot now? [y/N] ' answer

if [[ "${answer,,}" == 'y' ]]; then
  echo 'System will reboot now.'
  sudo systemctl reboot
else
  echo 'Reboot cancelled'
fi
