# Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Variables
GRADLE=$HOME/.gradle/bin/
CARGO=$HOME/.cargo/env
LOCAL_BIN=$HOME/.local/bin
DENO=$HOME/.deno/bin
ZSH_THEME="robbyrussell" # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Zsh configuration

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"

zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git)
source $ZSH/oh-my-zsh.sh
source $HOME/.zshrcdeno
# Aliases

alias exa="exa --icons"
alias ls="exa"
alias cat="bat --color auto -pp --wrap never"
alias edit="hx"
alias reload="source ~/.zshrc"

# Important

export PATH=$PATH:$GRADLE:$CARGO:$LOCALBIN:$DENO
export EDITOR='hx'

# Functions

update () {
  sudo dnf update
  flatpak update
  rustup update
}

# Cool runs

pipes.sh