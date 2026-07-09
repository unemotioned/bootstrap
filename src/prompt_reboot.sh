#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
master_dir="$(cd "${script_dir}/.." && pwd)"

hehe_kitty="$master_dir/assets/chafa/hehe_kitty.png"

if ! command -v chafa &>/dev/null; then
    sudo pacman -S --noconfirm chafa
fi

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
