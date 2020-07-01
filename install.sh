# Include dotfiles from ~/.bashrc:
if ! grep -Fq 'source ~/.dotfiles/.bashrc' ~/.bashrc; then
  echo 'source ~/.dotfiles/.bashrc' >> ~/.bashrc
fi;

# Include dotfiles .gitconfig:
git config --global include.path ~/.dotfiles/.gitconfig
