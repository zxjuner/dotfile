#! /usr/bin/env zsh

# 默认安装时不更新 Homebrew
HOMEBREW_NO_AUTO_UPDATE=1

# Install web apps.
#
echo " ----- Install web apps ------"
brew install --cask java
brew install --cask alfred
brew install --cask android-studio
brew install --cask docker
brew install --cask sublime-text
brew install --cask bbedit
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask sourcetree
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
brew install --cask imageoptim
brew install --cask visual-studio-code
brew install --cask calibre
brew install --cask xmind
brew install --cask iina

echo " ------------ END ------------"