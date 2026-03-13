#!/usr/bin/env bash
set -euo pipefail

mapfile -t orphans < <(yay -Qdtq || true)
if [ ${#orphans[@]} -gt 0 ]; then
  yay -Rns "${orphans[@]}"
else
  echo 'No orphaned packages found.'
fi
