#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
master_dir="$(cd "${script_dir}/.." && pwd)"

chafa_dir="$master_dir/assets/chafa"

if ! command -v chafa &>/dev/null; then
    sudo pacman -S --noconfirm chafa
fi

clear -x

printf '========================================='
printf 'Installation and configuration completed.'
printf '========================================='
printf '\n'

chafa "${chafa_dir}"/hehe_kitty.png

while true; do

    read -rp 'Reboot now? [Y/n]: ' answer
    
    case "${answer,,}" in
        "" | y)
            printf 'System will reboot now.'
            systemctl reboot
            ;;
        n)
            printf '\n'
            chafa "${chafa_dir}"/not_hehe_kitty.png

            printf 'Cancel reboot.'
            ;;
    esac
done