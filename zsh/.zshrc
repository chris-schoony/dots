export EDITOR=nvim

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# alias
alias ls="eza --icons"
alias la="eza -l --icons --git -a"
alias tl="~/scripts/timelapse.sh -int 3"
alias kb="sudo sh -c 'echo 2 > /sys/module/hid_apple/parameters/fnmode'"

eval "$(starship init zsh)"

# functions
v () { 
  if [ -z "$WORK" ]
  then
    nvim $1
  else
    NVIM_APPNAME=nvim-work nvim $1
  fi
}

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

unset GEM_HOME
autoload -Uz compinit && compinit
