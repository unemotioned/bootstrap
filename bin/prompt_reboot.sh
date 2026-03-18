#!/usr/bin/env bash
set -euo pipefail

if command -v chafa &>/dev/null; then
  sudo pacman -S --noconfirm chafa
fi

hehe_kitty="$EXE_PATH/asset/chafa/hehe_kitty.png"

clear -x

echo '======================================================'
echo 'Installation and configuration completed successfully.'
echo '======================================================'

[ -f "$hehe_kitty" ] && chafa "$hehe_kitty"

read -rp 'Reboot now? [Y/n]: ' answer

if [[ "${answer,,}" == 'y' || -z "${answer}" ]]; then
  echo 'System will reboot now'
  systemctl reboot
elif [[ "${answer,,}" == 'n' ]]; then
  echo 'Reboot cancelled'
else
  echo 'Invalid input. Reboot cancelled'
fi
