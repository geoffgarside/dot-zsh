# Default third party GOPATH
# go get installs here
export GOPATH=$HOME/Go

# Add our "go get" GOPATH/bin to PATH
if [[ -n "${GOPATH}" ]]; then
  export PATH=$PATH:$GOPATH/bin
fi

# Add our project Go directories to GOPATH (may remove this later)
if [[ -d "$HOME/Projects/Personal/Go" ]]; then
  export GOPATH=$GOPATH:$HOME/Projects/Personal/Go
fi

if [[ -d "$HOME/Projects/M247/Go" ]]; then
  export GOPATH=$GOPATH:$HOME/Projects/M247/Go
fi
