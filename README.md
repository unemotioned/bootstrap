# Arch Linux Hyprland

Scripts to install packages and stow my dotfiles

---

## Table of Contents

- [Scripting](#scripting)
- [Packages](#packages)
  - [Pacman](#pacman)
  - [AUR](#aur)
  - [Manual](#manual)

---

## Scripting

- `command -v {pkg}`: look up package in $PATH and return if found
- `&>/dev/null`: suppress stdout, stderr to print no output

---

## Packages

- `--noconfirm`: skip confirmation prompts

### Pacman

Packages those can be installed with `pacman`

- base-devel
- bat
- bluez
- bolt
- eza
- foot
- fzf
- git
- go-md2man
- hypridle
- hyprlock
- hyprpaper
- hyprpicker
- hyprshot
- jdk17-openjdk
- lazygit
- libinput-tools
- lsof
- man-db
- man-pages
- nautilus
- neovim
- node
- noto-fonts-cjk
- noto-fonts-emoji
- npm
- oft-font-awesome
- pavucontrol
- pipewire-audio
- rustup
- sof-firmware
- stow
- tmux
- ttf-iosevka-nerd
- unzip
- waybar
- yarn
- yazi
- zoxide
- zsh
- zsh-autosuggestions
- zsh-history-substring-search

### AUR

Packages those can only be installed with `AUR`

- oh-my-zsh
- overskride
- pfetch
- powerlevel10k
- visual-studio-code-bin
- wlclipboard
- wlogout
- xremap-wlroots-bin
- zsh-fast-syntax-highlighting

### Manual

- brillo
- tpm
- yay

---

#### Happy Scripting 🎉
