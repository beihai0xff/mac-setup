#!/bin/sh

# This script is used to setup the environment for the new mac

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update-reset

# use homebrew to install ...
# install git
brew install git
# install golang and goland
brew install go
brew install --cask goland

# install hugo
brew install hugo
brew install stats

# install iterm2
brew install iterm2
# install oh-my-zsh and plugins:zsh-autosuggestions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting