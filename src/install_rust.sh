#!/usr/bin/env bash
set -euo pipefail

sudo pamcan -S --noconfirm --needed rustup

# toolchain to latest stable release
rustup default stable
