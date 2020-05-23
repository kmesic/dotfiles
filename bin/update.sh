#!/usr/bin/env bash

# Usage:
#   sh ./update.sh
#   sh ./update.sh -f
#       - This will skip the question check

function update() {
    echo "$(dirname "${BASH_SOURCE}")";
}

# git pull origin master;

# function doIt() {
# 	rsync --exclude ".git/" \
# 		--exclude ".DS_Store" \
# 		--exclude ".osx" \
# 		--exclude "bootstrap.sh" \
# 		--exclude "README.md" \
# 		--exclude "LICENSE-MIT.txt" \
# 		-avh --no-perms . ~;
# 	source ~/.bash_profile;
# }

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	update;
else
	read -p "This will overwrite existing files in your dotfiles repo. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		update;
	fi;
fi;
unset update;