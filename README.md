## 介绍
### 自动设置 macOS

1. 更改系统设置
2. Finder 设置
3. Safari 设置

### 自动安装常用软件及工具

1. Sublime text 3
2. Chrome
3. Docker

## 如何使用
1. 首先克隆此项目到本地
```
git clone git@github.com:zxjuner/dotfile.git
```
2. 切换到项目目录，修改 shell 脚本可执行权限
```
chmod +x ./setup-macos.sh && chmod +x ./install-app.sh && chmod +x ./config.sh
```
3. 根据需要执行以下脚本
- 设置 macOS
```
./setup-macos.sh
```
- 安装软件及工具
```
./install-app.sh
```
- 配置
```
./config.sh
```

完成以上操作请重启电脑！

# License
dotfile is available under the MIT license. See the LICENSE file for more info.