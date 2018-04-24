# Install Ruby:
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update

# Ruby dependencies:
sudo apt-get install -y libssl-dev
sudo apt-get install -y libreadline-dev
sudo apt-get install -y zlib1g-dev

# Install rbenv:
if ! type rbenv >/dev/null 2>&1; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  source ~/.bashrc

  mkdir "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
fi;

# Install ruby:
RUBY_VERSION=2.5.1
if (! type ruby || ! ruby -v | grep $RUBY_VERSION) >/dev/null 2>&1; then
  # Make sure ruby-build is up-to-date:
  (cd "$(rbenv root)"/plugins/ruby-build && git pull)

  rbenv install $RUBY_VERSION
  rbenv global $RUBY_VERSION
fi;
