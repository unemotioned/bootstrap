#!/usr/bin/env bash

set -e

read -rp 'Reboot now? [y/N] ' answer

if [[ "${answer,,}" == 'y' ]]; then
  echo 'System will reboot now'
  sleep 2 # sleep for 2 seconds
  sudo systemctl reboot
else
  echo 'Reboot cancelled'
fi
