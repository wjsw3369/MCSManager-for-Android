此分支用于存放代理所需执行文件

进度：测试中...代理可用，但git的速度很慢甚至失败，准备转变思路


### 前置工作：

更换清华源（也可在ZeroTermux左侧工具栏更换）

```shell
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list && apt update
 -y && apt upgrade -y
```

### 使用方法：

一. 拉取mian.sh运行MCSManager-for-Android小白辅助脚本

```shell
bash <(curl -sSL https://fxdl.wjsw.top/https://raw.githubusercontent.com/wjsw3369/MCSManager-for-Android/proxy/mian.sh)
```

```shell
By: wjsw3369

 欢迎使用 MCSManager-for-Android 小白辅助脚本

  正在使用cloudflare网络代理
 
本机IP地址：(你的IP地址，用于局域网连接等使用)

bash <(curl -sSL https://fxdl.wjsw.top/https://raw.githubusercontent.com/wjsw3369/MCSManager-for-Android/proxy/mian.sh)



本脚本大部分操作基于 ZeroTermux

请选择以下功能：
1. 安装MCSManager-for-Android
2. 安装java21-环境
3. 启动守护进程
4. 启动Web进程
q. 退出

请输入功能序号:
```

二. 输入1安装MCSManager-for-Android

三. 输入2安装java环境

四. 输入3启动守护进程

五. 切换窗口，重新运行脚本，输入4启动web进程

六. 网页打开：http://localhost:23333/

===========================================================================