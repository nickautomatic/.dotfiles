VAGRANT_VERSION=2.2.7
wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb
sudo dpkg -i vagrant_${VAGRANT_VERSION}_x86_64.deb
rm vagrant_${VAGRANT_VERSION}_x86_64.deb

if (! grep "VAGRANT_WSL_ENABLE_WINDOWS_ACCESS" ~/.bashrc) >/dev/null; then
  echo 'export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"' >> ~/.bashrc
fi

if (! grep "/mnt/c/Program Files/Oracle/VirtualBox" ~/.bashrc) >/dev/null; then
  echo 'export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"' >> ~/.bashrc
fi

