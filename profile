#Source at interactive login. Ex.: gnome-session.
 if [ -n "$BASH_VERSION" ]; then
     if [ -f "$HOME/.bashrc" ]; then
     . "$HOME/.bashrc"
     fi
 fi

 PATH="$HOME/bin:$HOME/.local/bin:$PATH"

 export ORDENV_SITE_PROFILE=20180528
 export ORDENV_COMM_PROFILE=
 export ORDENV_GROUP_PROFILE=
 . /fs/ssm/main/env/ordenv-boot-20180430.sh
 . ssmuse-sh -x main/opt/jobctl/jobctl-1.8
