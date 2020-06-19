# Install marker (if it's not already installed)
[ ! -d ~/.marker ] && git clone --depth=1 https://github.com/pindexis/marker ~/.marker
~/.marker/install.py

# Update .bashrc
if (! grep 'share/marker/marker.sh' ~/.bashrc) >/dev/null; then
tee -a ~/.bashrc <<EOF >/dev/null
# Marker:
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"
bind -x '"\emg1":"_marker_get"'
bind '"'"${MARKER_KEY_GET:-\C-X}"'":"\emg1"'
EOF
fi

source ~/.bashrc

