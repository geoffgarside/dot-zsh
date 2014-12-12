export RBENV_ROOT=$HOME/.rbenv
[[ -d /usr/local/var/rbenv ]] && export RBENV_ROOT=/usr/local/var/rbenv

if [[ -d $RBENV_ROOT ]]; then
  export PATH=$PATH:$RBENV_ROOT/bin
  eval "$(rbenv init -)"
  ruby_version() { rbenv version-name }
else
  ruby_version() { echo '' }
fi

# determine Ruby version whether using RVM or rbenv
# the chpwd_functions line cause this to update only when the directory changes
function _update_ruby_version() {
  typeset -g ruby_version=''
  if which rbenv &> /dev/null; then
    def_version=$(cat ${RBENV_ROOT}/version | sed -e "s/ (set.*$//")""
    ruby_version="$(rbenv version | sed -e "s/ (set.*$//")"
    if [ "x${ruby_version}" = "x${def_version}" ]; then
      ruby_version=""
    fi
  fi
}
chpwd_functions+=(_update_ruby_version)
