#!/usr/bin/env bash
set -euo pipefail

HEHE_KITTY="$EXE_PATH/archive/hehe_kitty.png"

clear -x

echo ''
echo '======================================================'
echo 'Installation and configuration completed successfully.'
echo '======================================================'
echo ''

[ -f "$HEHE_KITTY" ] && chafa "$HEHE_KITTY"

read -rp 'Reboot now? [Y/n] ' answer

if [[ "${answer,,}" == 'y' || -z "${answer}" ]]; then
  echo 'System will reboot now'
  systemctl reboot
elif [[ "${answer,,}" == 'n' ]]; then
  echo 'Reboot cancelled'
else
  echo 'Invalid input. Reboot cancelled'
fi
