# dotfiles

## Usage

```bash
mkdir -p ~/.local/share && \
cd ~/.local/share && \
git clone git@github.com:abhisek/dotfiles.git dotfiles
```

### Omarchy / Arch Linux

Install the required packages

```bash
./init.sh
```

Add the following to `~/.bashrc`:

```bash
source $HOME/.local/share/dotfiles/bash.sh
```

### MacOS

```bash
rm -rf $HOME/.config/nvim/lua/config/keymaps.lua
ln -sf `pwd`/lazyvim/lsp.lua $HOME/.config/nvim/lua/plugins/lsp.lua
ln -sf `pwd`/lazyvim/keymaps.lua $HOME/.config/nvim/lua/config/keymaps.lua
```
