#!/bin/zsh - 

# check to see if the following software is installed. if not, install it.

# brew
echo checking brew...
if ! command -v brew &> /dev/null
then
	echo "brew could not be found."
	echo "installing brew.."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
	echo "brew exists."
fi

# iTerm2
brew list iTerm2 &> /dev/null || brew install iTerm2

# tmux
brew list tmux &> /dev/null || brew install tmux

# Python3. install and set path of python == python3
PATH = "$PATH:/usr/local/bin/python3"

# Jupyterlab
brew install jupyterlab

# awscli
brew install awscli

# Update pip, install global libraries (pd, np, torch etc..)
pip install --upgrade pip
pip install pandas numpy torch

# Prompt for git auth and change .gitconfig



