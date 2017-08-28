# base.sh adapted from https://github.com/ohthatjames/.dotfiles
source ~/.dotfiles/.aliases
source ~/.dotfiles/.bash_prompt

if test -e `echo "~/.dotfiles/private/*.sh" | cut -d' ' -f1`
then
  for file in ~/.dotfiles/private/*.sh
  do
    source $file
  done
fi
