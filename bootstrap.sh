set -e

if [[ ! -x `which ansible` ]]; then
  echo "Installing Ansible"
  sudo apt update
  sudo apt install --yes software-properties-common
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt install --yes ansible
fi

if [[ -x `which ansible` ]]; then
  echo "Ansible is available"
  ansible-playbook -K -i ansible/hosts ansible/playbook.yml
fi

source ~/.bashrc
