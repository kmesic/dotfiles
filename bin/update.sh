#!/usr/bin/env bash

# Info: Update 
# Usage:
#   sh ./update.sh
#   sh ./update.sh -f
#       - This will skip the question check

function update() {
    # Save current directory in
    saveDir=$(pwd)

    # Change into the root directory of the dotfiles repo
    cd "$(dirname "${BASH_SOURCE}")"
    cd ..

    # update brew list -> Brewfile
    brew bundle dump -f

    cp -r ~/.config .

    # Go back to directory that we started in
    cd "$saveDir";
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	update
else
	read -p "This will overwrite existing files in your dotfiles repo. Are you sure? (y/n) " -n 1
	echo ""
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		update
	fi
fi
unset update