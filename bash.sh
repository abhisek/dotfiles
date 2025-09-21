# This is the loader script that loads all other bash related dotfiles
SELF=$(dirname "${BASH_SOURCE[0]}")

source "$SELF/bash/git.sh"
