#!/bin/bash
#fscServer控制脚本

#重定标准向输出到文件
exec 1>>server.info
case $1 in
	start ) 
        java -jar ./fsc-server-0.1.0.war &
		;;
	 stop ) 
        if [ -f ./server.pid ]; then
            pid=$(cat ./server.pid)
            kill $pid
            rm ./server.pid
            echo "服务端已关闭"
        else
            echo "服务未启动"
        fi
        ;;
   status ) 
        if [[ ! -f ./server.pid ]]; then
        	echo "服务未启动"

        fi
        ;;
 restart ) ;;
* ) 
echo "指令错误";;
esac

pid=$!

echo "$pid" >server.pid


#trap "执行完成" EXIT
