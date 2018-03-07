#!/bin/bash
# This script will set up a new system, installing a bunch of useful tools
# It only needs to be run once (and, depending on your needs, possibly not
# even once). You'll probably need to `sudo` it: ie. `sudo bash setup.sh`
#
# It was written for use on Windows Subsystem for Linux (WSL), so mileage
# may vary on other OSes.

# Setup directory:
SETUP_DIR=~/.dotfiles/setup

## Function to prompt for user response:
prompt () {
  while true; do
    echo;
    read -p "$1 " yn
    case $yn in
      [Yy]* ) return 0;;
      [Nn]* ) return 1;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

# Install Git:
if prompt "Install Git? [y/n]"; then source ${SETUP_DIR}/git.sh; fi

# Install Ruby:
if prompt "Install Ruby? [y/n]"; then source ${SETUP_DIR}/ruby.sh; fi

# Install Node:
if prompt "Install Node? [y/n]"; then source ${SETUP_DIR}/node.sh; fi

# Install Yarn:
if prompt "Install Yarn? [y/n]"; then source ${SETUP_DIR}/yarn.sh; fi

# Install PHP:
if prompt "Install PHP? [y/n]"; then source ${SETUP_DIR}/php.sh; fi
if prompt "Install Composer? [y/n]"; then source ${SETUP_DIR}/composer.sh; fi

# Install Vagrant:
echo;
echo 'Before installing Vagrant in WSL, make sure it is installed in Windows';
if prompt "Install Vagrant? [y/n]"; then source setup/vagrant.sh; fi

# Install fzf (fuzzy finder):
source ${SETUP_DIR}/fzf.sh

# Nice git diffs:
npm install -g diff-so-fancy 
git config --global core.pager "diff-so-fancy | less --tabs=1,5 -R"

