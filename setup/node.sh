# Install nvm (Node Version Manager):
# (nb. this might require some tweaking in order to allow it to work ok with sudo)
if ! type nvm >/dev/null 2>&1; then
  sudo sh -c 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | NVM_DIR=/usr/local/nvm bash'
  
  if ! grep -Fq 'nvm' ~/.bashrc; then
    echo 'export NVM_DIR="/usr/local/nvm"' >> ~/.bashrc
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
  fi

  export NVM_DIR="/usr/local/nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi;

# Install the latest LTS version of Node:
nvm install --lts

# Use it (without having to open a new terminal):
nvm use node

