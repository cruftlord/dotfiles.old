# Use Coreutils instead of mac defaults
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
