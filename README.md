<!-- markdownlint-disable-file no-inline-html -->

# Bootstrap

BASH scripts for setting up [Arch Linux](https://archlinux.org/) and [Hyprland](https://hypr.land/) automatically for my taste.

**My workflow**: `Arch` + `Hyprland` + `Kitty` + `Tmux` + `Neovim`

## Reference

- [You installed Omarchy, Now What? - typecraft](https://www.youtube.com/watch?v=d23jFJmcaMI)

## Table of Contents

- [Run](#run)
- [Packages](#packages)
  - [Pacman](#pacman)
  - [AUR](#aur)
  - [Manual](#manual)

## What I Learned

- [Scripting](./archive/scripting.md)

---

## Run

```sh
mkdir -p ~/dev
git clone https://github.com/unemotioned/bootstrap.git ~/dev/bootstrap
cd ~/dev/bootstrap/
./master.sh
```

---

## Packages

- `--noconfirm`: skip confirmation prompts
- `--needed`: skip if already up-to-date

### Pacman

Packages that can be installed with `pacman`.

<details>
  <summary><b>Click to expand</b></summary>

- base-devel
- bat
- bluetui
- bluez
- bolt
- btop
- chromium
- dhcpcd
- discord
- eza
- fastfetch
- fcitx5-configtool
- fcitx5-hangul
- fcitx5-im
- foot
- fprintd
- fzf
- git
- git-delta
- github-cli
- gnome-clocks
- go
- go-md2man
- hypridle
- hyprlock
- hyprpaper
- hyprpicker
- hyprpolkitagent
- hyprshot
- hyprshutdown
- impala
- jdk17-openjdk
- jdk21-openjdk
- jdk25-openjdk
- keyd
- lazygit
- lsof
- ly
- man-db
- man-pages
- maven
- nautilus
- neovim
- node
- nodejs-lts-krypton
- noto-fonts-cjk
- noto-fonts-emoji
- noto-fonts-extra
- npm
- os-prober
- pacman-contrib
- pavucontrol
- pipewire-audio
- pnpm
- power-profiles-daemon
- presenterm
- python-gobject
- reflector
- rustup
- satty
- shellcheck
- shfmt
- sof-firmware
- stow
- tmux
- ttf-iosevka-nerd
- ttf-jetbrains-mono-nerd
- unzip
- vim
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

[Back to Pacman Header](#pacman)

</details>

### AUR

Packages that can only be installed from `AUR` repository.

- adobe-source-han-sans-kr-fonts
- adobe-source-han-serif-kr-fonts
- catppuccin-gtk-theme-mocha
- fish
- localsend-bin
- oh-my-zsh-git
- opencode-bin
- starship
- vscodium-bin
- wlogout
- zsh-fast-syntax-highlighting
- zsh-theme-powerlevel10k

### Manual

- brillo
- tpm
- yay
- Google Sans Flex
