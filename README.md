# Bootstrap

Scripts to install packages and stow my dotfiles.

My workflow: `Arch` + `Hyprland` + `Kitty` + `Tmux` + `Neovim`

## Reference

- [You installed Omarchy, Now What? - typecraft](https://www.youtube.com/watch?v=d23jFJmcaMI)

## Table of Contents

- [Scripting](#scripting)
- [Packages](#packages)
  - [Pacman](#pacman)
  - [AUR](#aur)
  - [Manual](#manual)

---

## Scripting

- `command -v <pkg>`: look up package in $PATH and return its path if found
- `&>/dev/null`: redirect stdout and stderr to /dev/null

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
- ttf-meslo-nerd
- unzip
- waybar
- yarn
- yazi
- zoxide
- zsh
- zsh-autosuggestions
- zsh-history-substring-search

### AUR

Packages that can only be installed via the AUR

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
