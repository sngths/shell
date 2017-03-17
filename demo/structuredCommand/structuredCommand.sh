#！/bin/bash
#结构化命令

#if语句检查后面命令的退出状态码 为0（命令运行成功）则then部分的命令就会被执行
if test $var;
	then
	echo ""
#test 用来检测条件 成立则返回0并退出
#测试变量中是否有内容
elif  pwd;
 then
	echo | pwd
fi


var1=1
var2=2
var3=3
#if语句中的数值比较
if [[ $var1 -eq 1 ]]; then
	echo "比较两个数值是否相等"
fi
if [[ $var2 -ge $var1 ]]; then
	echo "var2 大于等于 var1"
fi
if [[ $var2 -gt $var1 ]]; then
	echo "var2 大于 var1"
fi
if [[ $var2 -le $var3 ]]; then
	echo "var3 小于等于 var2"
fi
if [[ $var2 -lt $var3 ]]; then
	echo "var3 小于 var2"
fi
if [[ $var2 -ne $var3 ]]; then
	echo "var3 不等于 var2"
fi



str1=str1
str2=str2
str3=str3
str4=''
#if语句中的字符串比较
if [[ $str1 = $str1 ]]; then
	echo "str1等于str1"
fi
if [[ $str1 != $str2 ]]; then
	echo "str1不等于str2"
fi
if [[ $str2 > $str1 ]]; then
	echo "str2大于str1"
fi
if [[ $str1 < $str2 ]]; then
	echo "str1小于str2"
fi
if [[ -n $str3 ]]; then
	echo "str4长度不为0"
fi
if [[ -z $str4 ]]; then
	echo "str4长度为0"
fi




#if语句中的文件比较
if [[ -d ../structuredCommand ]]; then
	echo "structuredCommand文件存在并是一个目录"
fi
if [[ -e ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在 是文件或者目录"
fi
if [[ -f ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并是一个文件"
fi
if [[ -r ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并可读"
fi
if [[ -s ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并非空"
fi
if [[ -w ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并可写"
fi
if [[ -x ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并可执行"
fi
if [[ -O ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并属于当前用户所有"
fi
if [[ -G ./structuredCommand.sh ]]; then
	echo "structuredCommand.sh文件存在并所属用户组和当前用户相同"
fi
#检测文件新旧 读取文件最后修改时间
if [[ ./structuredCommand.sh -nt ../calculate/calculate.sh ]]; then
	echo "文件1比文件2新"
fi
if [[ ../calculate/calculate.sh -ot ./structuredCommand.sh ]]; then
	echo "文件2比文件1旧"
fi


#复合条件测试
if [[ $str1 = $str1 ]] && [[ $str1 = $str1 ]]; then
	echo "复合条件 且"
fi
if [[ $str1 = $str1 ]] || [[ $str1 = $str2 ]]; then
	echo "复合条件 或"
fi

#case条件
case $var1 in
	1 )
		echo "var1的值为1"
		;;
	2 ) 
        echo"var1的值为2"
        ;;
esac










