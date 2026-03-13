#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed jdk17-openjdk rustup

sudo archlinux-java set java-17-openjdk

rustup default stable
