export PATH="$HOME/.bin:/usr/local/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export HISTSIZE=10000
export SAVEHIST=9000

export CLICOLOR=1
# export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=0;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
# export LSCOLORS='exfxcxdxaxegedabagacad'

export GREP_COLOR='00;36'

export PYTHONSTARTUP="$HOME/.pythonrc"

if hash nvim 2>/dev/null; then
  export EDITOR=nvim
elif hash vim 2>/dev/null; then
  export EDITOR=vim
else
  export EDITOR=vi
fi
export USE_EDITOR="$EDITOR"
export VISUAL="$EDITOR"

if hash vimpager 2>/dev/null; then
  export PAGER=vimpager
elif hash most 2>/dev/null; then
  export PAGER=most
elif hash less 2>/dev/null; then
  export PAGER=less
elif hash more 2>/dev/null; then
  export PAGER=more
else
  export PAGER=cat
fi

if hash less 2>/dev/null; then
  export LESS='--ignore-case --long-prompt --QUIET --raw-control-chars --no-init'
fi
