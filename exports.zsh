# Currently this path is appendend to dynamically when picking a ruby version
# export PATH=bin:script:$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH

export PATH=''
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C
