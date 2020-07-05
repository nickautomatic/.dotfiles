#!/bin/bash
# This script will install miscellaneous extra tools
# (All essentials are installed via bootstrap.sh)
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

# Install Ruby:
if prompt "Install Ruby? [y/n]"; then
  source ${SETUP_DIR}/ruby.sh; # ruby itself
  source ${SETUP_DIR}/gem.sh;  # some gems
fi

# Install MySQL:
if prompt "Install MySQL? [y/n]"; then source ${SETUP_DIR}/mysql.sh; fi

# Install Postgres:
if prompt "Install PostgreSQL? [y/n]"; then source ${SETUP_DIR}/postgresql.sh; fi

# Install Python:
if prompt "Install Python? [y/n]"; then source ${SETUP_DIR}/python.sh; fi

# Install Redis:
if prompt "Install Redis? [y/n]"; then source ${SETUP_DIR}/redis.sh; fi

# Install Elasticsearch:
if prompt "Install Elasticsearch? [y/n]"; then source ${SETUP_DIR}/elasticsearch.sh; fi

# Install PHP:
if prompt "Install PHP? [y/n]"; then source ${SETUP_DIR}/php.sh; fi
if prompt "Install Composer? [y/n]"; then source ${SETUP_DIR}/composer.sh; fi

# Install Vagrant:
echo;
echo 'Before installing Vagrant in WSL, make sure it is installed in Windows';
if prompt "Install Vagrant? [y/n]"; then source setup/vagrant.sh; fi