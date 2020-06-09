# Install marker (if it's not already installed)
[ ! -d ~/.marker ] && git clone --depth=1 https://github.com/pindexis/marker ~/.marker
~/.marker/install.py

# Update .bashrc
if (! grep 'share/marker/marker.sh' ~/.bashrc) >/dev/null; then
  echo
  echo "export MARKER_KEY_GET='\\C-X'" >> ~/.bashrc
  echo '[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"' >> ~/.bashrc
fi

source ~/.bashrc

