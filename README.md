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
- [Scripting](#scripting)

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

```sh
git clone https://github.com/UnEmotioneD/bootstrap.git
```

2. move in

```sh
cd ~/bootstrap
```

3. execute `master.sh` script

```sh
./master.sh
```

---

## Packages

- `--noconfirm`: skip confirmation prompts

### Pacman

Packages that can be installed with `pacman`

- base-devel
- bat
- bluez
- bolt
- eza
- foot
- fzf
- git
- git-delta
- go-md2man
- hypridle
- hyprlock
- hyprpaper
- hyprpicker
- hyprshot
- jdk17-openjdk
- lazygit
- libinput-tools
- linux-firmware
- lsof
- man-db
- man-pages
- nautilus
- neovim
- node
- noto-fonts-cjk
- noto-fonts-emoji
- npm
- otf-font-awesome
- pavucontrol
- pipewire-audio
- reflector
- rustup
- sof-firmware
- stow
- tmux
- ttf-iosevka-nerd
- ttf-jetbrains-mono-nerd
- unzip
- waybar
- yarn
- yazi
- zoxide
- zsh
- zsh-autosuggestions
- zsh-history-substring-search

### AUR

Packages that can only be installed from `AUR` repository

- oh-my-zsh
- overskride
- pfetch-rs
- powerlevel10k
- vscodium
- wlclipboard
- wlogout
- xremap-wlroots-bin
- zsh-fast-syntax-highlighting

### Manual

- brillo
- tpm
- yay

---

## Scripting

- `command -v <pkg>`: look up package in $PATH and return it if found
- `&>/dev/null`: redirect stdout and stderr to /dev/null (print no output)
