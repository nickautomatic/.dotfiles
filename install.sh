# Include dotfiles from ~/.bashrc:
if ! grep -Fq 'source ~/.dotfiles/base.sh' ~/.bashrc; then
  echo 'source ~/.dotfiles/base.sh' >> ~/.bashrc
fi;

# Include dotfiles .gitconfig:
git config --global include.path ~/.dotfiles/.gitconfig
