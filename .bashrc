export BROWSER='/mnt/c/Windows/explorer.exe'
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL="erasedups:ignoreboth"

# Git completions / prompt:
GIT_COMPLETIONS=/usr/share/bash-completion/completions/git
[ -r $GIT_COMPLETIONS ] && source $GIT_COMPLETIONS
source ~/.dotfiles/scripts/git-prompt.sh

# Load other dotfiles:
source ~/.dotfiles/.aliases
source ~/.dotfiles/.bash_prompt

# .extra is an optional .gitignored file for local settings:
[ -r ~/.dotfiles/.extra ] && source ~/.dotfiles/.extra

# asdf
if [[ -s "$HOME/.asdf/asdf.sh" ]]; then
  source "$HOME/.asdf/asdf.sh"
  source "$HOME/.asdf/completions/asdf.bash"
fi

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

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Vagrant
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"

# z
[ -r ~/bin/z.sh ] && source ~/bin/z.sh

# Allow z to use fzf when called without arguments:
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

# Launch SSH agent:
source ~/.dotfiles/scripts/ssh.sh
