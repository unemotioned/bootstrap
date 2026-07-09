#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm --needed \
    jdk17-openjdk \
    jdk21-openjdk \
    jdk25-openjdk

yay --noconfirm --needed -S maven

sudo archlinux-java set java-25-openjdk
