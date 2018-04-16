#Source at interactive login. Ex.: gnome-session.
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

PATH="$HOME/bin:$HOME/.local/bin:/usr/lib/go-1.10/bin:$PATH"
