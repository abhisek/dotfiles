# Check if go is installed and set GOPATH
if command -v go &>/dev/null; then
  export GOPATH="$(go env GOPATH)"
  export PATH="$GOPATH/bin:$PATH"
fi
