#!/usr/bin/env bash
set -euo pipefail

# check if Color is already set
if grep -q '^Color' /etc/pacman.conf; then
  echo 'Color: already set, skipping'
else
  sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
  echo 'Color: set'
fi

# check if ILoveCandy is already set
if grep -q '^ILoveCandy' /etc/pacman.conf; then
  echo 'ILoveCandy: already set, skipping'
else
  sudo sed -i '/^Color/a ILoveCandy' /etc/pacman.conf
  echo 'ILoveCandy: set'
fi

# print result of Color
if grep -q '^Color' /etc/pacman.conf; then
  echo 'Color: Success'
else
  echo 'Color: Failed'
fi

# print result of ILoveCandy
if grep -q '^ILoveCandy' /etc/pacman.conf; then
  echo 'ILoveCandy: Success'
else
  echo 'ILoveCandy: Failed'
fi
