# Include dotfiles from ~/.bashrc:
if ! grep -Fq 'source ~/.dotfiles/base.sh' ~/.bashrc; then
  echo 'source ~/.dotfiles/base.sh' >> ~/.bashrc
fi;

# Include dotfiles .gitconfig:
git config --global include.path ~/.dotfiles/.gitconfig

# Symlink some things:
[ ! -e ~/.gemrc ] && ln -s ~/.dotfiles/.gemrc ~/.gemrc
[ ! -e ~/.tigrc ] && ln -s ~/.dotfiles/.tigrc ~/.tigrc
[ ! -e ~/.vimrc ] && ln -s ~/.dotfiles/.vimrc ~/.vimrc
[ ! -e ~/.tmux.conf ] && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

