# Install n (Node version manager):
if ! type n >/dev/null 2>&1; then
  curl -L https://git.io/n-install | bash
fi;

# Use it (without having to open a new terminal):
source ~/.bashrc

# Install the latest LTS version of Node:
n lts

