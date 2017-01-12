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

alias bbq='cd ~/init/projects/bbq'
alias code='cd ~/code'
alias init='cd ~/init'
alias console='cd ~/init/console && nvm use'
alias cli='cd ~/init/cli && nvm use'
alias csi='cd ~/init/csi && nvm use'
alias docs='cd ~/init/documentation'
alias dox='cd ~/init/documentation'
alias lamb='cd ~/init/message-processing-lambda && nvm use'
alias lapi='cd ~/init/lambda-api-client'
alias ncl='cd ~/init/node-client && nvm use'
alias api='cd ~/go/src/github.com/init-ai/api'
alias tools='cd ~/go/src/github.com/init-ai/toolbox'
alias dots='cd ~/code/dotfiles'
alias db='cd ~/Dropbox'
alias dbc='cd ~/Dropbox/code'
alias ks='cd ~/init/k8s'
alias prj='cd ~/init/projects'

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
