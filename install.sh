#! /usr/bin/env bash

brew_is_installed() {
  brew list -1 | grep -Fqx "$1"
}

echo "安装brew同时会自动安装xcode command line tools:"
if  [ ! command -v brew >/dev/null 2>&1 ] 
then
	echo "没安装,来自动装一个.homebrew!"
	# 官网推荐的brew安装方式:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	export SHELL="/bin/zsh"

	# TODO: 如果安装失败,那么退出脚本!

else
	echo "***"
	brew update
	brew upgrade
fi

# 启用xcode的命令行开发工具
echo "Open command line tools first"
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer