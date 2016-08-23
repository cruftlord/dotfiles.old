# History Files
HISTSIZE=99999
SAVEHIST=99999
HISTFILE=~/.zsh_history

# Set Vim mode
bindkey -v

# Remove lag going into Vim mode
export KEYTIMEOUT=1

# Dircolors
eval $( dircolors -b $HOME/.dir_colors )

# ZSH Syntax Highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# TODO add more