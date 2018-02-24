# Install Ruby:
apt-add-repository ppa:brightbox/ruby-ng
apt-get update

# Ruby dependencies:
apt-get install -y libssl-dev libreadline-dev zlib1g-dev

# Install rbenv:
if ! type rbenv >/dev/null 2>&1; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  source ~/.bashrc

  mkdir -p "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
fi;

# Install ruby:
RUBY_VERSION=2.4.2
if (! type ruby || ! ruby -v | grep $RUBY_VERSION) >/dev/null 2>&1; then
  rbenv install $RUBY_VERSION
  rbenv global $RUBY_VERSION
fi;
