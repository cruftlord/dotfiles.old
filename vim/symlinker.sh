#!/bin/bash

# This is where all the config goes for this service, EDIT HERE
# declare the list of files to receive juicy linking
PROGRAM_NAME="VIM"
declare -a filelist=("vim" "vimrc")

# Finds out the script location, and the directory it's in
# SCRIPTDIR=$(readlink -f "$0")
DOTFILESDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "$DOTFILESDIR"

# Target is Home Directory
TARGETDIR="$HOME"

# This function creates a symlink
Linkit() {
	# First argument has to be Source
	# Second is Target
	# Third is file in question
	SOURCE="$1"
	TARGET="$2"
	FILE="$3"
	echo "Linking $SOURCE/$FILE to $TARGET/.$FILE"
	ln -s "$SOURCE/$FILE" "$TARGET/.$FILE"
}

# Now do a loop
echo "Linking files for: $PROGRAM_NAME"
for filename in "${filelist[@]}"
do
	# calls the function with the arguments
	Linkit $DOTFILESDIR $TARGETDIR $filename
done


