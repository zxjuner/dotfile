#! /usr/bin/env zsh

# 默认安装时不更新 Homebrew
HOMEBREW_NO_AUTO_UPDATE=1

# Install web apps.
# virtualbox: 虚拟机
# alfred: 效率工具
# sourcetree: git 客户端
# dbeaver-community: 数据库客户端
# imageoptim: 图片优化工具
# calibre: 电子书管理 app
# xmind: 思维导图
# iina: 视频播放器
# kid3: 歌曲信息编辑器
echo " ----- Install web apps ------"
brew install --cask java
brew install --cask docker
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack

brew install --cask android-studio
brew install --cask bbedit
brew install --cask sublime-text
brew install --cask visual-studio-code

brew install --cask iterm2
brew install --cask sourcetree
brew install --cask dbeaver-community

brew install --cask alfred
brew install --cask google-chrome
brew install --cask firefox
brew install --cask imageoptim
brew install --cask calibre
brew install --cask xmind

brew install --cask iina
brew install --cask kid3
brew install --cask qbittorrent

echo " ------------ END ------------"