export BROWSER='/mnt/c/Windows/explorer.exe'
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth

# Git completions / prompt:
GIT_COMPLETIONS=/usr/share/bash-completion/completions/git
[ -r $GIT_COMPLETIONS ] && source $GIT_COMPLETIONS
source ~/.dotfiles/scripts/git-prompt.sh

# Load other dotfiles:
source ~/.dotfiles/.aliases
source ~/.dotfiles/.bash_profile
source ~/.dotfiles/.bash_prompt

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

# asdf
if [[ -s "$HOME/.asdf/asdf.sh" ]]; then
  source "$HOME/.asdf/asdf.sh"
  source "$HOME/.asdf/completions/asdf.bash"
fi

# z
[ -r ~/bin/z.sh ] && source ~/bin/z.sh

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [[ -x `which rg` ]]; then
  export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!{node_modules,.git}'"
fi

# n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
export PATH="$N_PREFIX/bin:$PATH"

# Marker
if [[ -s "$HOME/.local/share/marker/marker.sh" ]]; then
  export MARKER_KEY_GET="\C-x"
  source "$HOME/.local/share/marker/marker.sh"
  bind -x '"\emg1":"_marker_get"'
  bind '"'"${MARKER_KEY_GET:-\C-X}"'":"\emg1"'
fi

# Launch SSH agent:
source ~/.dotfiles/scripts/ssh.sh
