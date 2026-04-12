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
    key="${opt%%=*}"
    if grep -qE "^#?${key}=" "$grub"; then
        sudo sed -Ei "s/^#?${key}=.*/${opt}/" "$grub"
    else
        echo "$opt" | sudo tee -a "$grub" >/dev/null
    fi
done

sudo pacman -S --noconfirm --needed os-prober

# Update GRUB config after it's done
sudo grub-mkconfig -o /boot/grub/grub.cfg
