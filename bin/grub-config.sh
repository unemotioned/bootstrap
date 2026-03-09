#!/usr/bin/env bash
set -euo pipefail

if ! grep -q '^GRUB_DEFAULT=saved' /etc/default/grub; then
  sudo sed -i 's/^GRUB_DEFAULT=.*/GRUB_DEFAULT=saved' /etc/default/grub
fi

# TODO: need to know the defaults

# GRUB_GFXMODE=640x480
# GRUB_DISABLE_LINUX_UUID=true
# GRUB_DISABLE_RECOVERY=true
# GRUB_SAVEDEFAULT=true
# GRUB_DISABLE_SUBMENU=y
# GRUB_DISABLE_OS_PROBER=false

# Update GRUB config after it's done
sudo grub-mkconfig -o /boot/grub/grub.cfg
