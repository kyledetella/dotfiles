alias .='pwd'
alias ..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'
alias 4..='cd ../../../..'
alias 5..='cd ../../../../..'

# git shortcuts
alias g='git'
alias gst='git status'
alias gs='git status'
alias gd='git diff'
alias gc='git checkout'
alias gcm='git checkout master'

alias code='cd ~/code'
alias init='cd ~/init'
alias dots='cd ~/code/dotfiles'
alias db='cd ~/Dropbox'
alias dbc='cd ~/Dropbox/code'

# System aliases
# via: https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions
# alias ps="ps ax"
alias psg="ps ax | grep -v grep | grep -i -e VSZ -e"
alias du="du -ach | sort -h"

alias q='exit'

alias bell='tput bel'

alias vim="$EDITOR"
alias vi="$EDITOR"
alias emacs="$EDITOR"
alias nano="$EDITOR"

if hash colordiff 2>/dev/null; then
  alias diff=colordiff
fi

alias ed='ed -p:'
alias lynx="lynx -cfg $HOME/.lynx.cfg"
alias screen='screen -U'
alias tmux='tmux -u2'

if [[ "$SHELL" == "$(which zsh)" ]]; then

  alias mv='nocorrect mv -i -v'
  alias cp='nocorrect cp -i -v'
  alias mkdir='nocorrect mkdir -p -v'
  alias ln='nocorrect ln -v'

  alias please='sudo $(fc -ln -1)'

fi

alias ,,='cd ..'
alias ..l='cd .. && ls'
alias :q='exit'
alias cd..='cd ..'
alias gits='git s'
alias gs='git s'
alias gut='git'
alias mdkir='mkdir'
alias npmi='npm i'
alias npmt='npm t'
alias sl='ls'
alias sudp='sudo'
alias snippet='snippets'
