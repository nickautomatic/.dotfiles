# Install fzf (fuzzy finder):
if ! type fzf >/dev/null 2>&1; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

# Enable fzf in the current terminal:
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
