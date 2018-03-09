# Install PhantomJS:
# (cf. https://gist.github.com/julionc/7476620#gistcomment-1958591)
if ! type phantomjs >/dev/null 2>&1; then
  PHANTOM_VERSION="phantomjs-2.1.1"
  ARCH=$(uname -m)

  if ! [ $ARCH = "x86_64" ]; then
    $ARCH="i686"
  fi

  PHANTOM_JS="$PHANTOM_VERSION-linux-$ARCH"

  sudo apt-get install -y chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev

  cd ~
  wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
  tar xvjf $PHANTOM_JS.tar.bz2
  sudo mv $PHANTOM_JS /usr/local/share/
  sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/share/phantomjs
  sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin/phantomjs
  sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/bin/phantomjs
  rm $PHANTOM_JS.tar.bz2
  cd -
fi;

