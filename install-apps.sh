#! /usr/bin/env zsh

# 默认安装时不更新 Homebrew
HOMEBREW_NO_AUTO_UPDATE=1

# Install web apps.
echo " ----- Install web apps ------"
brew cask install java
brew cask install alfred
brew cask install android-studio
brew cask install docker
brew cask install sublime-text
brew cask install bbedit
brew cask install google-chrome
brew cask install iterm2
brew cask install sourcetree
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install imageoptim
brew cask install visual-studio-code

echo " ------------ END ------------"