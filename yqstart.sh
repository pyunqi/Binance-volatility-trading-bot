#!/bin/bash
#@author smallForest
#@email 1032817724@qq.com
proc_name=" binanceYQ.py" #进程名字
proc_num()
{
        num=`ps -ef | grep $proc_name | grep -v grep | wc -l`
        return $num
}
proc_num
number=$?
echo $number
if [ $number -eq 0 ]
then
 #cd /Applications/MAMP/htdocs/aa/bb/public #进入路径
 nohup python3  /home/ubuntu/yunqi_b/binanceYQ.py >yqlog.txt 2>&1 & # 创建守护进程
fi
