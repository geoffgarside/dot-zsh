if is_mac; then
  # http://apple.stackexchange.com/questions/5435/got-any-tips-or-tricks-for-terminal-in-mac-os-x?page=2&tab=votes#tab-top
  quit() {
    for app in $*; do
      osascript -e 'quit app "'$app'"'
    done
  }
  relaunch() {
    for app in $*; do
      osascript -e 'quit app "'$app'"';
      sleep 2;
      open -a $app
    done
  }
fi
