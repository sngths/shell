#!/bin/bash
 #for 列表迭代
for i in a b c "d e"; do
	echo $i
done
#读取输入值
for var in $1; do
	echo $var
done

#通配符读取目录
for i in ../*; do
	echo $i
done

#while命令 输出到文件
var=0
while [[ $var -lt 5 ]]; do
	echo "var值加一"
	var=$[$var + 1 ]
done > output.log

