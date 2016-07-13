# This is where VSCode installs its stuff
CURRENT_OS=$(uname -s)
if [ "$CURRENT_OS" = 'Darwin' ]; then
    VSCODE_PATH="$HOME/Library/Application Support/Code/"
elif [ "$CURRENT_OS" = 'Linux' ]; then
    VSCODE_PATH="$HOME/.config/Code/"
fi

# Get current directory
VSCODE_DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Test if file exists and install if not
if [ -e "$VSCODE_PATH/User/settings.json" ]; then
    # Do nothing
    true
else
    # Link the file in
    echo "Linking files for VSCode"
    rm -rf "$VSCODE_PATH/User"
    ln -s "$VSCODE_DOTFILES_DIR/User" "$VSCODE_PATH/User"
fi
