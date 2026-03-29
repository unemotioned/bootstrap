#!/usr/bin/env bash
set -e

status=$(claude auth status | grep loggedIn | awk '{print $2}' | tr -d ',')
if [ "$status" = 'false' ]; then
  claude auth login
fi

EXE_PATH="$(pwd)"
op_dir="$HOME/.config/opencode"
mkdir -p "$op_dir"
cp "$EXE_PATH/asset/opencode/opencode.json" "$op_dir"

# Deprecated
function foobar {
  # opencode-bin: AI agent
  # claude-code, opencode-claude-auth; to use claude model in opencode tui
  # lsof: opencode.nvim dependency
  yay -S --noconfirm --needed opencode-bin opencode-claude-auth claude-code lsof

  # add path if binary is not found
  if ! command -v opencode &>/dev/null; then
    export PATH="$HOME/.opencode/bin:$PATH"
  fi

  # auth login if no credentials exist
  cred=$(opencode providers list | grep credentials | awk '{print $2}')
  if [ "$cred" = "0" ]; then
    opencode auth login
  fi
}
