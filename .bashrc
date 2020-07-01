export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth

if [[ ! -x `which rg` ]]; then
  export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
fi
