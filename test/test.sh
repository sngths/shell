#!/bin/bash
#shell脚本
echo -n "'系统当前时间：'"
date
who
if pwd
then 
    ls
elif [[ 0 ]]; then
    	#statements
    	echo 'aa'
fi


#判断java运行环境
if [[ java ]]; then
	#重定向到STDOUT
	java -version >&1
	else
		echo "未找到java运行环境"
fi



val1="as"
case "$val1" in
"a") echo "a";;
"b") echo "b";;
*) echo "c";;
esac


for i in asd asd a c \' "asd'as  d'"; do
	#statements
	echo $i
done


for path in $(ls); do
	#statements
	echo $path
done



val2="aaaa"
while [[ $val2 == "aaaa" ]]; do
	#statements
	echo $val2
	val2="aa"
done

until [[ $val2 == "aaaa" ]]; do
	#statements
	echo $val2
	val2="aaaa"
done

while [[ 0 ]]; do
	#statements
	echo "break 1"
	break
done


while [[ 0 ]]; do
	#statements
	while [[ 0 ]]; do
		#statements
		echo "break 2 跳出两级循环"
		break 2
	done
done



val3=0
while [[ $val3 == 0 ]]; do
	#statements
	if [[ $val3 == 0 ]]; then
		#statements
		val3=1
		echo "continue"
		continue 1
		val3=0
	fi

done


#读取输入参数
echo $0
echo $1
echo $2
echo $3
echo $4
echo $5



val4=3
until [[ $val4 == 0 ]]; do
 	#statements
 	echo $val4
 	val4=$[ $val4 - 1 ]
done

#去除脚本名中的路径
echo -n "不包含路径的脚本名："
echo $(basename $0)


#检测参数中是否包含数据
if [[ -n "$2" ]]; then
	#statements
	echo "\$2的值为:$2"
	else
	echo "\$2中无数据"
fi



#检测参数数目
echo "共有$#个参数"


#获取参数列表
for i in $@; do
	#statements
	echo $i
done


#挨个输出选项
while [[ -n $1 ]]; do
	#statements
	case "$1" in
	    -a) echo "-a" ;;
		-b) echo "-b" ;;
        -c) echo "-c" ;;
         *) echo "$1不是参数"
	esac
	shift
done


#获取用户输入
read -p "输入用户名：" name
#处理超时 隐藏密码
if read -t 20 -s -p  "输入密码：" password; then
	#statements
	echo "用户名：$name  密码：$password"
else
	echo "输入超时"
fi


#读取每行数据
ls -al | while read line; do
	#statements
	echo "$line"
	
done




#函数
function func1 {
	echo "func1函数"
	#返回状态码
	return 0
}

#函数执行完毕后获得状态码
func1
echo "函数结束状态码：$?"

























