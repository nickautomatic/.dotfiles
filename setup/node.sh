# Install nvm (Node Version Manager):
# (nb. this might require some tweaking in order to allow it to work ok with sudo)
if ! type nvm >/dev/null 2>&1; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi;

# Install the latest LTS version of Node:
nvm install --lts

# Use it (without having to open a new terminal):
nvm use node

