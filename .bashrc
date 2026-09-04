shopt -s histappend
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL="erasedups:ignoreboth"
export COREPACK_ENABLE_AUTO_PIN=0
export EDITOR="/usr/bin/hx"

LS_COLORS="$LS_COLORS:ow=30;42"

# Git completions / prompt:
GIT_COMPLETIONS=/usr/share/bash-completion/completions/git
[ -r $GIT_COMPLETIONS ] && source $GIT_COMPLETIONS
source ~/.dotfiles/scripts/git-prompt.sh

# Load other dotfiles:
source ~/.dotfiles/.aliases

# .extra is an optional .gitignored file for local settings:
[ -r ~/.dotfiles/.extra ] && source ~/.dotfiles/.extra

# atuin
ATUIN_COMPLETIONS=~/atuin.bash
[ -r $ATUIN_COMPLETIONS ] && source $ATUIN_COMPLETIONS
export ATUIN_CONFIG_DIR="$HOME/.dotfiles/atuin"

# batcat
export BAT_CONFIG_PATH="$HOME/.batcatrc"

# cheat
export CHEAT_USE_FZF=true

# eza
export EZA_ICON_SPACING=2
export EZA_CONFIG_DIR="$HOME/.dotfiles/eza"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [[ -x `which rg` ]]; then
  export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!{node_modules,.git}'"
fi

# man
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | batcat -p -lman'"

# Marker
if [[ -s "$HOME/.local/share/marker/marker.sh" ]]; then
  export MARKER_KEY_GET="\C-x"
  source "$HOME/.local/share/marker/marker.sh"
  bind -x '"\emg1":"_marker_get"'
  bind '"'"${MARKER_KEY_GET:-\C-X}"'":"\emg1"'
fi

# mise-en-place
[ -f ~/.local/bin/mise ] && eval "$(~/.local/bin/mise activate bash)"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Starship
export STARSHIP_CONFIG="$HOME/.dotfiles/starship.toml"
eval "$(starship init bash)"

# z
[ -r ~/bin/z.sh ] && source ~/bin/z.sh

# Allow z to use fzf when called without arguments:
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

# Launch SSH agent:
source ~/.dotfiles/scripts/ssh.sh
