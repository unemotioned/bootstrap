#!/usr/bin/env bash
set -euo pipefail

if ! pacman -Qi fprintd &>/dev/null; then
  sudo pacman -S --noconfirm fprintd
fi

function register_this {
  clear -x

  while true; do

    finger=''
    while true; do
      echo -e 'Which finger to register?\n'

      echo 'a: left-little-finger'
      echo 's: left-ring-finger'
      echo 'd: left-middle-finger'
      echo 'f: left-index-finger'
      echo -e 'g: left-thumb\n'

      echo 'h: right-thumb'
      echo 'j: right-index-finger'
      echo 'k: right-middle-finger'
      echo 'l: right-ring-finger'
      echo -e ';: right-little-finger\n'
      read -rp 'Choose wisely: ' answer

      case "$answer" in
      a) finger='left-little-finger' ;;
      s) finger='left-ring-finger' ;;
      d) finger='left-middle-finger' ;;
      f) finger='left-index-finger' ;;
      g) finger='left-thumb' ;;
      h) finger='right-thumb' ;;
      j) finger='right-index-finger' ;;
      k) finger='right-middle-finger' ;;
      l) finger='right-ring-finger' ;;
      ';') finger='right-little-finger' ;;
      *)
        echo "Invalid selection: $answer"
        continue
        ;;
      esac
      break
    done

    echo "You've chosen: $finger"

    # register fingerprint
    sudo fprintd-enroll -f "$finger" "$USER"
    echo ''
    # check
    sudo fprintd-verify -f "$finger" "$USER" || true

    while true; do
      read -rp "Do you want to register another finger? [y/N]: " answer
      if [ "${answer,,}" = y ]; then
        break
      elif [ "${answer,,}" = n ] || [ -z "$answer" ]; then
        break 2
      else
        echo "It's a simple question."
      fi
    done

  done
}

function skip {
  echo 'Skipping finger print registration.'
}

# Entry point
clear -x
while true; do
  read -rp 'Do you have to have your hands registered as lethal weapons? [Y/n]: ' answer # Breaking Bad Season 4

  if [ "${answer,,}" = y ] || [ -z "$answer" ]; then
    register_this
    break
  elif [ "${answer,,}" = n ]; then
    skip
    break
  else
    echo 'Answer in yes or no'
  fi
done
