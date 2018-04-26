# a terminal multiplexer for multiple sessions and panes in the terminal
sudo apt-get install tmux

# automatically start tmux with bash,
# and exit bash when last pane is closed:
if (! grep "tmux new-session" ~/.bashrc) >/dev/null; then
  echo '[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit; }' >> ~/.bashrc
fi

