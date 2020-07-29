#!/usr/bin/env bash

# Info: Update the dotfiles repo based on the current environment
# Usage:
#   sh ./update.sh
#   sh ./update.sh -f
#       - This will skip the question check

function update() {
    # Save current directory in
    initDir=$(pwd)

    # Change into the root directory of the dotfiles repo
    cd "$(dirname "${BASH_SOURCE}")"
    cd ..

    # update brew list -> Brewfile
    brew bundle dump -f

    # Copy fish config
    cp -r ~/.config .

    # Copy gpg config (used for signing commits)
    cp ~/.gnupg/gpg-agent.conf .

    # Go back to directory that we started in
    cd "$initDir";
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