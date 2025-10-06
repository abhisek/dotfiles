#!/bin/bash

source ./arch/init.sh

if [ -d "$HOME/.config/nvim/lua/config" ]; then
  echo "LazyVim config found. Adding custom keymaps."

  if [ -f "$HOME/.config/nvim/lua/config/keymaps.lua" ]; then
    echo "Backing up existing keymaps.lua to keymaps.lua.bak"
    cp "$HOME/.config/nvim/lua/config/keymaps.lua" "$HOME/.config/nvim/lua/config/keymaps.lua.bak"
    cp ./lazyvim/keymaps.lua "$HOME/.config/nvim/lua/config/keymaps.lua"
  fi
fi

if [ -d "$HOME/.config/nvim/lua/plugins" ]; then
  echo "LazyVim plugins directory found. Adding custom plugins."
  for x in ./lazyvim/plugins/*; do
    echo "Linking $(basename "$x") to plugins directory."
    ln -sf "$(pwd)/lazyvim/$(basename "$x")" "$HOME/.config/nvim/lua/plugins/$(basename "$x")"
  done
fi
