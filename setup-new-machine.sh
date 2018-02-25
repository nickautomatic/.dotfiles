# This script will set up a new system, installing a bunch of useful tools
# It only needs to be run once (and, depending on your needs, possibly not
# even once). You'll probably need to `sudo` it: ie. `sudo bash setup.sh`
#
# It was written for use on Windows Subsystem for Linux (WSL), so mileage
# may vary on other OSes.

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
if prompt "Install Git? [y/n]"; then bash setup/git.sh; fi

# Install Ruby:
if prompt "Install Ruby? [y/n]"; then bash setup/ruby.sh; fi

# Install Node:
if prompt "Install Node? [y/n]"; then bash setup/node.sh; fi

# Install Yarn:
if prompt "Install Yarn? [y/n]"; then bash setup/yarn.sh; fi

# Install PHP:
if prompt "Install PHP? [y/n]"; then bash setup/php.sh; fi
 
