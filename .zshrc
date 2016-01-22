#!/bin/bash

### Oh-My-Zsh Config

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh
DEFAULT_USER=$(whoami)
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git git-extras git-flow git-remote-branch gitfast node npm osx pip python osx colored-man colorize grunt django postgres brew grunt brew fabric brew-cask)
export HISTFILE=~/.histfile
HISTSIZE=99999999
SAVEHIST=99999999

# Radial Analytics
source $HOME/.radialrc

### Aliases

# Grep Source fro ~TODO Spec
# See: https://en.wikipedia.org/wiki/Comment_(computer_programming)#Tags
alias todo="grep 'TODO\:\|REVIEW\:\|BUG\:\|NOTE\:\|FIXME\:\|XXX\:\|HACK\:\|UX\:' * -nri"

# Get IP Address
alias ip="echo $(ifconfig en0|grep 'inet '| awk '{ print $2}')"

# List Files
alias l="ls -la"

# Editor
alias v="open -a MacVim.app $1"

# Re-Source .zshrc
alias reup="source ~/.zshrc"

# Kill Chrome
alias kc="killall -9 \"Google Chrome\""

