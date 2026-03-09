# chafa

Terminal image rendering tool

[GitHub - hpjansson](https://github.com/hpjansson/chafa)

## Install

```sh
if ! command -v chafa &/dev/null;then
  sudo paman -S --noconfirm chafa
fi
```

## Get Relative PATH

Get path where the script is located

```sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
```

## Usage

```sh
chafa "$SCRIPT_DIR/../archive/hehe_kitty.png"
# or
chafa "$SCRIPT_DIR/../archive/not_hehe_kitty.png"
```
