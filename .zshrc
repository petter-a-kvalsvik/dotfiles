export ZSH=/usr/share/oh-my-zsh
export ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

plugins=(
    oh-my-zsh
    git
    powerline
)

### ALIASES ###

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias pl="echo ""; pwd; echo ""; ls; echo "";"
alias ll="ls -alh"

###############

# ----The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' max-errors 5
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/petter/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
bindkey -v
# ----End of lines configured by zsh-newuser-install

### START-SCRIPTS ###

#wal -Rtq

#####################
