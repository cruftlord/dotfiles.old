# Paths that are needed for various brew packages

# PATH now includes local bin
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

# Use Coreutils instead of mac defaults
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
