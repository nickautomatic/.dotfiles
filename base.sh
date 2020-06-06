# base.sh adapted from https://github.com/ohthatjames/.dotfiles
source ~/.dotfiles/completion/git-completion.bash
source ~/.dotfiles/completion/git-prompt.sh
source ~/.dotfiles/.aliases
source ~/.dotfiles/.bash_profile
source ~/.dotfiles/.bash_prompt
source ~/.dotfiles/.bashrc

# .extra is an optional .gitignored file for local settings:
[ -r ~/.dotfiles/.extra ] && source ~/.dotfiles/.extra

# Like .extra, private local scripts can go in .dotfiles/private:
if test -e `echo "~/.dotfiles/private/*.sh" | cut -d' ' -f1`
then
  for file in ~/.dotfiles/private/*.sh
  do
    source $file
  done
fi

# Launch SSH agent:
source ~/.dotfiles/scripts/ssh.sh

