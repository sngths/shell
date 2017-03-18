#!/bin/bash

#文件描述符 标准输入为0 标准输出为1  标准错误为2

#标准输出重定向到文件
ls -al > ./output.log

#重定向标准输入为文件
cat < ./output.log

#标准输出追加到文件
who >> ./output.log

#重定向标准错误
ls asd 2>>./output.log 

#使用文件描述符来重定向
ls 1>> ./output.log
cat 0< ./output.log

#临时重定向
echo "临时重定向输出到标准错误" >&2

#永久重定向到文件
exec 1>>./output.log
pwd

#创建自定义重定向
exec 3>&1
exec 4<&0
ls -al >&3
echo <&4

