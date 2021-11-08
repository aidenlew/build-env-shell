#!/bin/zsh - 

# check to see if the following software is installed. if not, install it.

# brew
echo checking brew...
if ! command -v brew &> /dev/null
then
	echo "<the_command> could not be found"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
	echo "brew exists."
fi

# iTerm2

# tmux

# Python3. install and set path of python == python3

# Jupyterlab

# awscli

# Update pip, install global libraries (pd, np, torch etc..)

# Prompt for git auth and change .gitconfig
