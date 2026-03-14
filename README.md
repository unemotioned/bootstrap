# Bootstrap

Scripts to install packages and stow my dotfiles.

My workflow: `Arch` + `Hyprland` + `Kitty` + `Tmux` + `Neovim`

## Reference

- [You installed Omarchy, Now What? - typecraft](https://www.youtube.com/watch?v=d23jFJmcaMI)

## Table of Contents

- [Prerequisite](#prerequisite)
- [Usage](#usage)
- [Packages](#packages)
  - [Pacman](#pacman)
  - [AUR](#aur)
  - [Manual](#manual)
- [Scripting](./archive/scripting.md)

---

## Prerequisite

Manually install the following package

- `git`: For cloning this repository

```sh
sudo pacman -Syu git
```

---

## Usage

1. clone this repository
2. move in
3. execute `master.sh` script

```sh
git clone https://github.com/unemotioned/bootstrap.git
cd ~/bootstrap
./master.sh
```

---

## Packages

- `--noconfirm`: skip confirmation prompts
- `--needed`: skip if already up-to-date

### Pacman

Packages that can be installed with `pacman`

- base-devel
- bat
- bluetui
- bluez
- bolt
- chromium
- dhcpcd
- discord
- eza
- fcitx5-configtool
- fcitx5-hangul
- fcitx5-im
- foot
- fzf
- git
- git-delta
- github-cli
- go-md2man
- hypridle
- hyprlock
- hyprpaper
- hyprpicker
- hyprshot
- impala
- jdk17-openjdk
- keyd
- lazygit
- lsof
- man-db
- man-pages
- nautilus
- neovim
- node
- noto-fonts-cjk
- noto-fonts-emoji
- npm
- opencode
- os-prober
- otf-font-awesome
- pacman-contrib
- pavucontrol
- pipewire-audio
- pnpm
- power-profiles-daemon
- python-gobject
- reflector
- rustup
- satty
- sof-firmware
- stow
- tmux
- ttf-iosevka-nerd
- ttf-jetbrains-mono-nerd
- unzip
- waybar
- wl-clipboard
- xdg-desktop-portal
- xdg-desktop-portal-gtk
- xdg-desktop-portal-hyprland
- yarn
- yazi(dependencies: ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick)
- zoxide
- zsh
- zsh-autosuggestions
- zsh-history-substring-search

### AUR

Packages that can only be installed from `AUR` repository

- adobe-source-han-sans-kr-fonts
- adobe-source-han-serif-kr-fonts
- catppuccin-gtk-theme-mocha
- cliphist
- localsend-bin
- oh-my-zsh-git
- pfetch-rs-bin
- vscodium-bin
- wlogout
- zsh-fast-syntax-highlighting
- zsh-theme-powerlevel10k

### Manual

- brillo
- tpm
- yay
