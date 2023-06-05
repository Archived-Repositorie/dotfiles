# Zsh installation
export ZSH="$HOME/.oh-my-zsh"
# export DRI_PRIME=1

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

alias hx="helix"
alias exa="exa -a --icons"
alias ls="exa"
alias tree="exa --tree --level=1"
alias lls="exa --long"
alias ltree="tree --long"
alias dtree="exa --tree"
alias dltree="dtree --long"
alias cat="bat --color auto -pp --wrap never"
alias edit="hx"
alias owofetch="owofetch | toilet -f term --gay --termwidth"
# alias uwufetch="uwufetch | toilet -f term --gay --termwidth"
# Important

export PATH=$PATH:$GRADLE:$CARGO:$LOCALBIN:$DENO
export EDITOR='hx'
export FONTS="/usr/share/fonts/"

# Functions

reload () {
  clear
  source ~/.zshrc
}

update () {
  ame -Syu
  flatpak update
}

# Cool runs
echo "$(date '+%D %T' | toilet -f standard -F border --gay --termwidth)"