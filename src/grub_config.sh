#!/usr/bin/env bash
set -euo pipefail

grub="/etc/default/grub"

grub_options=(
    "GRUB_DEFAULT=saved"
    "GRUB_GFXMODE=640x480"
    "GRUB_DISABLE_LINUX_UUID=true"
    "GRUB_DISABLE_RECOVERY=true"
    "GRUB_SAVEDEFAULT=true"
    "GRUB_DISABLE_SUBMENU=y"
    "GRUB_DISABLE_OS_PROBER=false"
)

for opt in "${grub_options[@]}"; do
    # `%%`: removes the longest matching suffix from the end
    # `=*`: matches everything from the first `=` to the end
    key="${opt%%=*}"

    if grep -qE "^#?${key}=" "${grub}"; then
        # Find the line containing the key, commented or with different value
        #  and replace it with the predefined value
        sudo sed -iE "s/^#?${key}=.*/${opt}/" "${grub}"
    else
        # `tee`: reads from standard input and appends to a file that requires root privileges
        echo "$opt" | sudo tee -a "${grub}" >/dev/null
    fi
done

sudo pacman -S --noconfirm --needed os-prober

# Update GRUB config after it's done
sudo grub-mkconfig -o /boot/grub/grub.cfg
