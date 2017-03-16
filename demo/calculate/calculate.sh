#!/bin/bash
#在脚本中使用bc 
var1=$(echo "var2=4;var2*4" | bc)
echo ${var1}

var3=5
var4=5
#使用脚本中定义好的变量
var5=$(echo "$var3*$var4" | bc)
echo ${var5} 

#EOF标示了重定向数据的起止

var6=$(bc << EOF
var3=$var3+$var4
var4=$var3*$var4
var4-var3
EOF
)
echo $var6
#查看上个已执行的退出码并退出
echo $?

#exit 可用来退出并指定退出码
exit 0
