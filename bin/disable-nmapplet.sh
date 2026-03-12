#!/usr/bin/env bash
set -e

sudo sh -c 'echo "Hidden=true" >> /etc/xdg/autostart/nm-applet.desktop'

killall -9 nm-applet

sudo pacman -Rns nm-applet
