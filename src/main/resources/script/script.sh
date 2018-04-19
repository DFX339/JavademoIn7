#!/bin/sh
cd  /usr/src/myapp

#得到进程ID pid，kill该进程
pid=`cat  /usr/src/myapp/pid`  #得到该目录下 pid文件中的进程id
if [ -n "$pid" ]
then
    echo "kill -9 的pid:" $pid
    kill -9 $pid    #kill该进程
fi

#执行jar，并将进程挂起，保存进程ID到 pid文件
echo "Execute shell Finish"
#执行项目jar包，将进程挂起，然后将进程id写入当前目录下的pid文件中
BUILD_ID=dontKillMe nohup java -jar /usr/src/myapp/JavademoIn7.jar  & echo "$!" > pid  