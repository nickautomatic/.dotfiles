# Install fzf (fuzzy finder):
if ! type fzf >/dev/null 2>&1; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

# Use ripgrep for default fzf command:
if (type rg && ! grep 'FZF_DEFAULT_COMMAND' ~/.bashrc) >/dev/null 2>&1; then
  echo "export FZF_DEFAULT_COMMAND=\"rg --files --hidden --follow --glob '!.git'\"" >> ~/.bashrc
fi

# Enable fzf in the current terminal:
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
