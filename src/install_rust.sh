#!/usr/bin/env bash
set -euo pipefail

sudo pamcan -S --noconfirm --needed rustup

rustup default stable
