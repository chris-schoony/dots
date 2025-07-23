export EDITOR=nvim

# alias
alias ls="eza --icons"
alias la="eza -l --icons --git -a"
alias v="nvim"

eval "$(starship init zsh)"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

unset GEM_HOME
autoload -Uz compinit && compinit
