# dotfiles

## Usage

```bash
mkdir -p ~/.local/share && \
cd ~/.local/share && \
git clone git@github.com:abhisek/dotfiles.git dotfiles
```

Install the required packages

```bash
./init.sh
```

Add the following to `~/.bashrc`:

```bash
source $HOME/.local/share/dotfiles/bash.sh
```
