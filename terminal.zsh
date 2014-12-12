# Current directory in title / iTerm semantic history (click on filename to open)
if [[ $TERM_PROGRAM == "Apple_Terminal" ]]; then
  update_terminal_cwd() {
    printf '\e]7;%s\a' "file://$HOST$(pwd | sed -e 's/ /%20/g')"
  }
elif [[ $TERM_PROGRAM == "iTerm.app" ]]; then
  # Only works without tmux or with integrated tmux
  update_terminal_cwd() {
    printf '\e]50;CurrentDir=%s\a' "$(pwd)"
  }
else
  case $TERM in
    sun-cmd)
      update_terminal_cwd() { print -Pn "\e]l%~\e\\" }
      ;;
    *xterm*|rxvt|(dt|k|E)term)
      update_terminal_cwd() { print -Pn "\e]2;%~\a" }
      ;;
    *)
      update_terminal_cwd() {}
      ;;
  esac
fi
