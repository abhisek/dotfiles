# This is the loader script that loads all other bash related dotfiles
SELF=$(dirname "${BASH_SOURCE[0]}")

# Bash specific scripts
source "$SELF/bash/git.sh"

# Common scripts
source "$SELF/common/ssh-agent.sh"
