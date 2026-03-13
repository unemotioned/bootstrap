#!/usr/bin/env bash
set -euo pipefail

HEHE_KITTY="$EXE_PATH/archive/hehe_kitty.png"

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
  echo 'System will reboot now'
  systemctl reboot
else
  echo 'Reboot cancelled'
fi
