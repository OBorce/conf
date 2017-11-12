# Path to your oh-my-zsh installation.
export ZSH=/home/boris/.oh-my-zsh
# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# make sure that if a program wants you to edit
# text, that Vim is going to be there for you
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Set name of the theme to load.
ZSH_THEME="zero-theme"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# ooh, what is this? Aliases?
source $HOME/.oh-my-zsh/lib/alias.zsh

# fzf to the rescue.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Expire duplicate entries first when trimming history.
setopt HIST_EXPIRE_DUPS_FIRST
# Dont record an entry that was just recorded again.
setopt HIST_IGNORE_DUPS
# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS
# Do not display a line previously found.
setopt HIST_FIND_NO_DUPS
