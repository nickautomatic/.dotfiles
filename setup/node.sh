# Install n (Node version manager):
if ! type n >/dev/null 2>&1; then
  curl -L https://git.io/n-install | bash
fi;

# Prepend n to PATH:
if (! grep 'export PATH="$N_PREFIX/bin:$PATH"' ~/.bashrc) >/dev/null; then
  echo 'export PATH="$N_PREFIX/bin:$PATH"' >> ~/.bashrc;
fi;

# Use it (without having to open a new terminal):
source ~/.bashrc

# Install the latest LTS version of Node:
n lts

