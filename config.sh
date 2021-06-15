#! /usr/bin/env bash

# 配置终端可指纹验证
sudo sed -i ".bak" '2s/^/auth       sufficient     pam_tid.so\'$'\n/g' /etc/pam.d/sudo

#添加配置文件
cat $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/.zshrc >> ~/.zshrc

# 安全性与隐私添加任何来源选项
sudo spctl --master-disable