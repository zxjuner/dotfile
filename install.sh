#! /usr/bin/env bash

brew_is_installed() {
  brew list -1 | grep -Fqx "$1"
}

echo "安装brew同时会自动安装xcode command line tools:"
if ! command -v brew &>/dev/null; then
	echo "没安装,来自动装一个 homebrew!"
	# 官网推荐的brew安装方式:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	if [ $? -eq 0 ]; then
		echo "homebrew 已安装"
	else
		echo "homebrew 安装失败!"
		exit 1
	fi

else
	echo "***"
	brew update
	brew upgrade
fi

# 将环境变量 SHELL 的值设置为 /bin/zsh
export SHELL="/bin/zsh"

# 启用xcode的命令行开发工具
echo "Open command line tools first"
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer