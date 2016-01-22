#!/bin/bash

### .ZPROFILE is set before .ZSHRC

# The Usual
export PATH=$PATH:/usr/local/bin

# Python
export PATH=$PATH:$HOME/.virtualenvs/apollo/bin

# Node.JS
source "$HOME/.noderc"

# Postgresql 9.4 Path
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

# Custom Bin Scripts
export PATH="$PATH:$HOME/dotfiles/bin"
