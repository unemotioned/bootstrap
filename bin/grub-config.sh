#!/usr/bin/env bash
set -euo pipefail

GRUB="/etc/default/grub"

GRUB_OPTIONS=(
  "GRUB_DEFAULT=saved"
  "GRUB_GFXMODE=640x480"
  "GRUB_DISABLE_LINUX_UUID=true"
  "GRUB_DISABLE_RECOVERY=true"
  "GRUB_SAVEDEFAULT=true"
  "GRUB_DISABLE_SUBMENU=y"
  "GRUB_DISABLE_OS_PROBER=false"
)

for opt in "${GRUB_OPTIONS[@]}"; do
  key="${opt%%=*}"
  if grep -qE "^#?${key}=" "$GRUB"; then
    sudo sed -Ei "s/^#?${key}=.*/${opt}/" "$GRUB"
  else
    echo "$opt" | sudo tee -a "$GRUB" >/dev/null
  fi
done

# Update GRUB config after it's done
sudo grub-mkconfig -o /boot/grub/grub.cfg
