# Start an SSH agent if its not already loaded
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(keychain --eval -q)"
fi
