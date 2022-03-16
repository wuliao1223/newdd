#!/bin/bash
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}

wget --no-check-certificate -qO ~/Network-Reinstall-System-Modify.sh 'https://www.cxthhhhh.com/CXT-Library/Network-Reinstall-System-Modify/Network-Reinstall-System-Modify.sh' && chmod a+x ~/Network-Reinstall-System-Modify.sh

UI(){
	bash ~/Network-Reinstall-System-Modify.sh -UI_Options
}
C7(){
	bash ~/Network-Reinstall-System-Modify.sh -CentOS_7
}
D10(){
	bash ~/Network-Reinstall-System-Modify.sh -Debian_10
}
U20(){
	bash ~/Network-Reinstall-System-Modify.sh -Ubuntu_20.04
}
Win2019(){
	bash ~/Network-Reinstall-System-Modify.sh -Windows_Server_2019
}
back(){
	bash  kjjb.sh
}
start_menu(){
	 clear 
 green "=========================================================="
      blue " 本脚本支持：CentOS7+ / Debian9+ / Ubuntu16.04+"
	 blue " 网站：https://m.233hhh.top " 
     blue " 此脚本源于网络，仅仅只是汇聚脚本功能，方便大家使用而已！"
           red " 默认密码: cxthhhhh.com "
green "=========================================================="
	  yellow "1. 图形化UI界面"
	  yellow "2. Centos7 "
       yellow "3. Debian10"
       yellow "4. Ubuntu20"
       yellow "5. Windows2019"
	  yellow "99. 返回 "
            red " 0. 退出脚本"
	echo 
	read -p "请输入数字:" num
	 case "$num" in 
		1) UI  ;;
		2) C7 ;;
		3) D10 ;;
		4) U20 ;;
		5) Win2019 ;;
		99) back ;;
		0) exit 0 ;;
		*)
	clear
	echo "请输入正确数字"
	sleep 2s
	start_menu
	;;
    esac
}
start_menu
