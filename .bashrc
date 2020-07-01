export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth

if [[ ! -x `which rg` ]]; then
  export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
fi

export PATH="$N_PREFIX/bin:$PATH"

# Marker:
if [[ -s "$HOME/.local/share/marker/marker.sh" ]]; then
  export MARKER_KEY_GET="\C-x"
  source "$HOME/.local/share/marker/marker.sh"
  bind -x '"\emg1":"_marker_get"'
  bind '"'"${MARKER_KEY_GET:-\C-X}"'":"\emg1"'
fi
