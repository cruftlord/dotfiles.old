# Fixes tmux colours
alias tmux="TERM=xterm-256color tmux"

if which tmux 2>&1 >/dev/null; then
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi
