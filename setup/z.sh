# Install z (rupa/z):
[ ! -d ~/bin ] && mkdir ~/bin
wget -O ~/bin/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
chmod u+x ~/bin/z.sh

if (! grep "source ~/bin/z.sh" ~/.bashrc) >/dev/null; then
  echo 'source ~/bin/z.sh' >> ~/.bashrc
  source ~/bin/z.sh
fi

