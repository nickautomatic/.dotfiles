pip3 install awscli --upgrade --user

if (! grep "export PATH=~/.local/bin:$PATH" ~/.bashrc) >/dev/null; then
  echo 'export PATH=~/.local/bin:$PATH' >> ~/.bashrc;
fi

