###########
# ANTIGEN #
###########
source $HOME/.antigen/antigen.zsh

# Load oh my zsh library
antigen use oh-my-zsh

# Default bundles
antigen bundle git

# Python Plugins
antigen bundle pip
antigen bundle python
antigen bundle virtualenv

# Start the SSH Agent
antigen bundle ssh-agent

# Test for OS
CURRENT_OS=`uname -s`
if [[ $CURRENT_OS == 'Darwin' ]]; then
    # macOS
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...
fi

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# End antigen
antigen apply

