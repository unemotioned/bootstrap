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
2. move in
3. execute `master.sh` script

```sh
git clone https://github.com/UnEmotioneD/bootstrap.git
cd ~/bootstrap
./master.sh
```

---

## Packages

- `--noconfirm`: skip confirmation prompts
- `--needed`: skip if already up-to-date

### Pacman

Packages that can be installed with `pacman`

- [ ] base-devel
- [ ] bat
- [ ] bluez
- [ ] bolt
- [ ] discord
- [ ] eza
- [ ] fcitx5-configtool
- [ ] fcitx5-hangul
- [ ] fcitx5-im
- [ ] firefox
- [ ] foot
- [ ] fzf
- [ ] git
- [ ] git-delta
- [ ] go-md2man
- [ ] hypridle
- [ ] hyprlock
- [ ] hyprpaper
- [ ] hyprpicker
- [ ] hyprshot
- [ ] jdk17-openjdk
- [ ] lazygit
- [ ] libinput-tools
- [ ] linux-firmware
- [ ] linux-lts
- [ ] linux-lts-headers
- [ ] lsof
- [ ] man-db
- [ ] man-pages
- [ ] nautilus
- [ ] neovim
- [ ] node
- [ ] noto-fonts-cjk
- [ ] noto-fonts-emoji
- [ ] npm
- [ ] otf-font-awesome
- [ ] pacman-contrib
- [ ] pavucontrol
- [ ] pipewire-audio
- [ ] pnpm
- [ ] reflector
- [ ] rustup
- [ ] satty
- [ ] sof-firmware
- [ ] stow
- [ ] tmux
- [ ] ttf-iosevka-nerd
- [ ] ttf-jetbrains-mono-nerd
- [ ] unzip
- [ ] waybar
- [ ] yarn
- [ ] yazi(dependencies: ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick)
- [ ] zoxide
- [ ] zsh
- [ ] zsh-autosuggestions
- [ ] zsh-history-substring-search

### AUR

Packages that can only be installed from `AUR` repository

- [ ] adobe-source-han-sans-kr-fonts
- [ ] adobe-source-han-serif-kr-fonts
- [ ] cliphist
- [ ] oh-my-zsh
- [ ] overskride
- [ ] pfetch-rs-bin
- [ ] powerlevel10k
- [ ] vscodium-bin
- [ ] wl-clipboard
- [ ] wlogout
- [ ] xremap-hypr-bin
- [ ] zsh-fast-syntax-highlighting

### Manual

- [ ] brillo
- [ ] tpm
- [ ] yay

---

## Scripting

[bash cheat sheet](https://devhints.io/bash)

- `command -v <pkg>`: look up package in $PATH and return it if found
- `&>/dev/null`: redirect stdout and stderr to /dev/null (print no output)
- `exit 0 ~ 255`: any none-zero value signals an error

  | Code  | Meaning                       |
  | ----- | ----------------------------- |
  | `0`   | Success                       |
  | `1`   | General error                 |
  | `2`   | Misues of shell builtins      |
  | `126` | Cmd found but not executable  |
  | `127` | Cmd not found                 |
  | `130` | Script terminated by `Ctrl+C` |

- `set -euo pipefail`: safer script execution

  | Flag       | Meaning                                     |
  | ---------- | ------------------------------------------- |
  | `-e`       | Exit immediately if a command fails         |
  | `-u`       | Treat unset variables as errors             |
  | `-o`       | Set a named option                          |
  | `pipefail` | Pipe fails if any command in the pipe fails |
