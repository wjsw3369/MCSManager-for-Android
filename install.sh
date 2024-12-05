#!/bin/bash
echo "安装运行库中..."
pkg update
pkg install nodejs -y
pkg install git -y

echo "下载MCSM文件 版本10.4.3..."
cd ~
mkdir mcsm
cd ~/mcsm

# 初始化仓库
git init
git remote add -f origin https://github.com/wjsw3369/MCSManager-for-Android.git
git config core.sparseCheckout true

# 定义需要检出的文件夹
echo "web/" >> .git/info/sparse-checkout
echo "daemon/" >> .git/info/sparse-checkout

# 拉取所需文件夹
git pull origin main

# 安装web服务依赖
echo "安装web服务依赖中..."
cd web
npm install --production --registry=https://registry.npmmirror.com/

# 安装守护进程依赖
echo "安装守护进程依赖中..."
cd ~/mcsm/daemon
npm install --production --registry=https://registry.npmmirror.com/
