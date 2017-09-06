#!/bin/bash

### .ZPROFILE is set before .ZSHRC

# The Usual
export PATH=/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/opt/X11/bin
export PATH=$PATH:/usr/local/sbin

# Python
export PATH=$PATH:$HOME/.virtualenvs/apollo/bin

# Node.JS
source "$HOME/.noderc"

# Postgresql 9.6 Path
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

# Custom Bin Scripts
export PATH="$PATH:$HOME/dotfiles/bin"

# Allow AnyApplication.app to use PATH
launchctl setenv PATH $PATH
# osascript -e 'tell app "Dock" to quit'

# Android SDK
export ANDROID_HOME=/Users/al/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
