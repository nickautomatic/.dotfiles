#!/bin/bash

set -e

# Install Ansible (on first run):
if [[ ! -x `which ansible` ]]; then
  echo "Installing Ansible"
  sudo apt update
  sudo apt install --yes software-properties-common
  sudo apt install --yes ansible
fi

# (Optionally) allow only tagged tasks to be run:
tags="$1"

if [ -z $tags ]; then
  tags="common"
fi

if [[ -x `which ansible` ]]; then
  echo "Ansible is available"
  (
    cd ~/.dotfiles
    ansible-playbook -v -K -i ansible/hosts ansible/playbook.yml --tags $tags
  )
fi

source ~/.bashrc
