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

. /opt/homebrew/opt/asdf/libexec/asdf.sh
