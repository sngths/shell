#!/usr/bin/env bash
OUTPUTFILE=./output.log
#重定向输出到文件（覆盖原先内容）
ls > ${OUTPUTFILE}
#输入重定向到文件 （对文本计数）
wc < ${OUTPUTFILE}
#通过管道连接 两个命令同时运行 产生的输出作为另一个命令的输入
cat ${OUTPUTFILE} | wc