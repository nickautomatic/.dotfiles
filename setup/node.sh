# Install nvm (Node Version Manager):
# (nb. this might require some tweaking in order to allow it to work ok with sudo)
if ! type nvm >/dev/null 2>&1; then
  source ~/.dotfiles/setup/nvm.sh
fi;

# Install the latest LTS version of Node:
nvm install --lts

# Make sure nvm uses the latest available node version by default:
nvm alias default node

# Use it (without having to open a new terminal):
nvm use node

