#Source at non login interactive mode
alias ls='ls --color=auto'
alias tmux="tmux -2"
alias ll='ls -la'
alias psg='ps -aux | grep $1'
alias v='vim -u ~/.vimrc_antoine'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LS_OPTIONS='--color=auto'

alias ls='ls $LS_OPTIONS'

export GIT_SSL_NO_VERIFY=1
export TERM=screen-256color
export VISUAL=vim
export EDITOR="$VISUAL"
