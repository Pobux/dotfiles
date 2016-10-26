alias ls='ls --color=auto'
alias tmux="tmux -2"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LS_OPTIONS='--color=auto'
eval "`dircolors`"

alias ls='ls $LS_OPTIONS'

export GIT_SSL_NO_VERIFY=1
export TERM=screen-256color
export PATH="$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH"

export VISUAL=vim
export EDITOR="$VISUEL"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/$(whoami)/.sdkman"
[[ -s "/home/$(whoami)/.sdkman/bin/sdkman-init.sh" ]] && source "/home/$(whoami)/.sdkman/bin/sdkman-init.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
