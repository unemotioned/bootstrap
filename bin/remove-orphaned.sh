#!/usr/bin/env bash

set -euo pipefail

orphans=$(yay -Qdtq || true)
if [ -n "$orphans" ]; then
  yay -Rns --noconfirm "$orphans"
else
  echo 'No orphaned packages found.'
fi
