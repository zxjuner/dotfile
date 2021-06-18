#! /usr/bin/env zsh

# 默认安装时不更新 Homebrew
HOMEBREW_NO_AUTO_UPDATE=1

# Install web apps.
#
echo " ----- Install web apps ------"
brew install java --cask
brew install alfred --cask
brew install android-studio --cask
brew install docker --cask
brew install sublime-text --cask
brew install bbedit --cask
brew install google-chrome --cask
brew install iterm2 --cask
brew install sourcetree --cask
brew install virtualbox --cask
brew install virtualbox-extension-pack --cask
brew install imageoptim --cask
brew install visual-studio-code --cask
brew install calibre --cask
brew install xmind --cask

echo " ------------ END ------------"