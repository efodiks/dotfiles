#!/bin/bash

# This script inits yadm and the setup

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo >> /Users/$USER/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing yadm"
brew install yadm

echo "Installing git-credentials"
brew install --cask git-credential-manager

git-credential-manager github login
git-credential-manager configure

yadm clone --recurse-submodules https://github.com/efodiks/dotfiles
