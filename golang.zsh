if [[ -z "${ALREADY_GLIDING}" ]]; then
  export GOPATH=$HOME/Go
fi

if [[ -n "${GOPATH}" ]]; then
  export PATH=$PATH:$GOPATH/bin
fi

function golang_gliding() {
  if [[ "x1" = "x${ALREADY_GLIDING}" ]]; then
    echo "gliding"
  else
    echo ""
  fi
}
