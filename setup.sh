#!/bin/sh
# setup mac

# HomeBrew
# see https://brew.sh/index_ja.html
if [ ! -x "`which brew`" ]; then
  echo "start install and update brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi

# rbenv
# see https://github.com/rbenv/rbenv
if [ ! -x "`which rbenv`" ]; then
  echo "start install rbenv"
  brew install rbenv
fi

# Git
# see https://git-scm.com/downloads
if [ ! -x "`which git`" ]; then
  echo "start install git"
  brew install git
fi

# brew cask
# brew cask install sourcetree
# brew cask install visual-studio-code
# brew cask install google-chrome

# mas (Mac App Store command line interface)
# if you need to install mas, remove comment out
# if [ ! -x "`which mas`" ]; then
#  echo "start install mas"
#  brew install mas
#
#  echo "install App Store Softwares"
#  mas install 497799835  # Xcode
#  mas install 896624060  # Kobito
#  mas install 1024640650 # CotEditor
# fi
