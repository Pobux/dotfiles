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
# eval "`dircolors`"

alias ls='ls $LS_OPTIONS'

export GIT_SSL_NO_VERIFY=1
export TERM=screen-256color
export PATH="$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH"

export VISUAL=vim
export EDITOR="$VISUAL"

#mkdir /var/run/sshd > /dev/null 2>&1
#chmod 0755 /var/run/sshd
#
#start-stop-daemon --start --pidfile /var/run/sshd.pid --exec /usr/sbin/sshd -- -p 22
#
#service rabbitmq-server start
#/root/start_mongo.sh
