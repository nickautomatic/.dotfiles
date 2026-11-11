autoload -Uz compinit && compinit

source ~/.dotfiles/.aliases

# atuin
export ATUIN_CONFIG_DIR="$HOME/.dotfiles/atuin"
eval "$(atuin init zsh --disable-ai)"

# batcat
export BAT_CONFIG PATH="$HOME/.dotfiles/.batcatrc"

# eza
export EZA CONFIG_DIR="$HOME/.dotfiles/eza"

# mise
eval "$(mise activate zsh)"

# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.dotfiles/starship.toml"

# VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# z
. /opt/homebrew/etc/profile.d/z.sh

# Allow z to use fzf when called without arguments:
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}
