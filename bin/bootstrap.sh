#!/usr/bin/env bash

# Info: Setup macos environment
# Steps:
#   1. Install or update brew
#   2. 
# Usage:
#   sh ./bootstrap.sh
#   sh ./bootstrap.sh -f
#       - This will skip the question check

function install_or_update_brew() {
    which -s brew
    if [[ $? != 0 ]] ; then
        echo "Brew is not installed! Installing brew..."
        # Install Homebrew
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
        echo "Brew is installed. Updating brew..."
        brew update
    fi
}

function bootstrap() {
    # Save current directory in
    initDir=$(pwd)

    install_or_update_brew

    # Change into the root directory of the dotfiles repo
    cd "$(dirname "${BASH_SOURCE}")"
    cd ..

    # Go back to directory that we started in
    cd "$initDir";
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	bootstrap
else
	read -p "This will overwrite existing files in home directory. Are you sure? (y/n) " -n 1
	echo ""
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		bootstrap
	fi
fi