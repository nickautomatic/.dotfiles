#!/bin/bash

set -e

# Include dotfiles from ~/.bashrc:
if ! grep -Fq 'source ~/.dotfiles/.bashrc' ~/.bashrc; then
  echo 'source ~/.dotfiles/.bashrc' >> ~/.bashrc
fi;

# Include dotfiles .gitconfig:
git config --global include.path ~/.dotfiles/.gitconfig

if [[ ! -x `which ansible` ]]; then
  echo "Installing Ansible"
  sudo apt update
  sudo apt install --yes software-properties-common
  # sudo apt-add-repository --yes --update ppa:ansible/ansible
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
    ansible-playbook -K -i ansible/hosts ansible/playbook.yml --tags $tags
  )
fi

source ~/.bashrc
