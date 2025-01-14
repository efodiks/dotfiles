#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then

  # possibly add something here to ensure iTerm2 is installed using Homebrew
  # cask like in the previous example

  if [ -d "$HOME/.iterm2" ]; then
    echo "Setting iTerm preference folder"
    defaults write com.googlecode.iterm2 PrefsCustomFolder "$HOME/.config/iterm2"
    defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
  fi

fi
