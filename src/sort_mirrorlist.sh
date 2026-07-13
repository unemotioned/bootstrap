#!/usr/bin/env bash
set -euo pipefail

if ! command -v reflector &>/dev/null; then
    sudo pacman -S --noconfirm reflector
fi

mirror='/etc/pacman.d/mirrorlist'

while true; do
    # -r: do not escape backslash
    # -p: prompt with no new line before read
    # assign standard input into variable `answer`
    read -rp 'Sort mirrorlist? [Y/n]: ' answer

    # $answer,,: value into all lowercase
    case "${answer,,}" in
        # empty input defaults to YES
        "" | y)
            sudo reflector \
                --save "${mirror}" \
                --sort rate \
                --verbose \
                --country KR,JP \
                --latest 10 \
                --protocol https

            sudo pacman -Syu --noconfirm
            break
            ;;
        n)
            echo "Skipping sort_mirrorlist.sh"
            break
            ;;
        *)
            echo "Invalid input. Please enter Y or N."
            ;;
    esac
done