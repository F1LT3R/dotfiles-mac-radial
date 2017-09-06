#!/bin/bash

### Oh-My-Zsh Config

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh
DEFAULT_USER=$(whoami)
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git git-extras git-flow git-remote-branch gitfast node npm nvm react-native scd tig yarn osx pip python osx grunt django postgres brew grunt brew fabric brew-cask docker colored-man-pages vi-mode)
export HISTFILE=~/.histfile
HISTSIZE=99999999999
SAVEHIST=99999999999

### Bash Setup

# Use VI Mode in Shell (ESC to use)
# set -o vi


# Hidden RC File, for API keys, etc.
# source $HOME/.apikeys

### MacVim as Default editor
# export $EDITOR=/Applications/MacVim.app/Contents/MacOS/MacVim

### Aliases

# Grep Source fro ~TODO Spec
# See: https://en.wikipedia.org/wiki/Comment_(computer_programming)#Tags
alias todo="grep 'TODO\:\|REVIEW\:\|BUG\:\|NOTE\:\|FIXME\:\|XXX\:\|HACK\:\|UX\:' * -nri"

# Get IP Address
alias ip="echo $(ifconfig en0|grep 'inet '| awk '{ print $2}')"

# List Files
alias l="ls -la"

# Re-Source .zshrc
alias reup="source ~/.zshrc"

# Kill Chrome
alias killchrome="killall -9 \"Google Chrome\""

# Sublime Text Alias
alias s="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

### Terminal Syntax Highlighting

# Setup: "brew install highlight"

# Pipe Highlight to less
export LESSOPEN="| $(which highlight) %s --out-format xterm256 --line-numbers --quiet --force --style solarized-light"
export LESS=" -R"
alias less='less -m -N -g -i -J --line-numbers --underline-special'
alias more='less'

# Use "highlight" in place of "cat"
alias cat="highlight $1 --out-format xterm256 --line-numbers --quiet --force --style solarized-light $2"

# Setup JSON Syntax Highlighting
# Copy js.lang to json.lang with the following command
# cp "$(dirname $(brew list highlight | head -n 1))/share/highlight/langDefs/js.lang" "$(dirname $(brew list highlight | head -n 1))/share/highlight/langDefs/json.lang"
# Syntax Highlighting for "cat"
