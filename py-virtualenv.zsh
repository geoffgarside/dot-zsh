which pyenv-virtualenv-init >/dev/null
if [ $? -eq 0 ]; then
  eval "$(pyenv virtualenv-init -)"
fi
