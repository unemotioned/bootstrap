#!/usr/bin/env bash
set -euo pipefail

cat >"$HOME"/.gitconfig <<EOF
[init]
	defaultBranch = main
[core]
  pager = delta
[interactive]
  diffFilter = delta --color-only
[delta]
  # use n / N to move between diff sections
  navigate = true
  side-by-side = true
  line-numbers = true
  syntax-theme = Visual Studio Dark+
[merge]
  conflictstyle = zdiff3
[diff]
  colorMoved = default
EOF
