#!/bin/bash
clear
ip_address=$(ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print $2}')
echo '
By: wjsw3369

 欢迎使用 MCSManager-for-Android 小白辅助脚本
 '
echo "本机IP地址： $ip_address"
echo '
bash <(curl -sSL https://raw.githubusercontent.com/wjsw3369/MCSManager-for-Android/main/mian.sh)

'

#一键安装MCSManager-for-Android
 MCSManager_Android() {
    echo "> 安装MCSManager-for-Android"
    bash <(curl -sSL https://raw.githubusercontent.com/wjsw3369/MCSManager-for-Android/main/install.sh)
 }

 #安装java21环境
 java_install() {
    bash <(curl -sSL https://raw.githubusercontent.com/wjsw3369/MCSManager-for-Android/main/java21install.sh)
 }

#启动守护进程
 start_Daemon() {
    echo "> 启动守护进程"
    cd ~/mcsm/daemon
    node app.js
 }

#启动web进程
 start_web() {
    echo "> 启动Web进程"
    cd ~/mcsm/web
    node app.js
 }

 # 脚本入口
if [ $# -gt 0 ]; then
    # 如果有命令行参数，则直接执行对应的函数
    function_name="$1"
    echo "直接进入子功能 $function_name , 更多选项请运行以上命令"
    echo ">"
    shift
    $function_name "$@"
else
    echo ""
    echo "本脚本大部分操作基于 ZeroTermux"
    while true; do
        echo ""
        echo "请选择以下功能："
        echo "1. 安装MCSManager-for-Android"
        echo "2. 安装java-21环境"
        echo "3. 启动守护进程"
        echo "4. 启动Web进程"
        echo "q. 退出"
        echo ""
        read -p "请输入功能序号: " input
        case $input in
        1) MCSManager_Android ;;
        2) java_install ;;
        3) start_Daemon ;;
        4) start_web ;;
        'q') break ;;
        *) ;;
        esac
    done
fi
echo "脚本执行完毕"
