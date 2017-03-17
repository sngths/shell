#!/bin/bash
#处理用户输入 $0为程序名 $1为第一个参数 $2为第二个 以此类推直到$9
echo $0
echo $1
echo $2

#basename 返回不含路径的脚本名
echo $(basename $0)

#$#用来统计参数个数
echo $#

#$*将所有参数作为一个整体
echo $*

#通过read获取输入内容 
read input
echo $input

read -p "请输入内容：" msg
echo $msg

#设置输入超时 read会以非0的状态码退出
if read -t 2  inputmsg; 
	then
	    echo $inputmsg
	else
		echo "输入超时"
fi

#隐藏方式读取
read -s -p "请输入密码" password
echo \n$password