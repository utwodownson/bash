#!/bin/bash 
#  清除log文件，第三版本
#  #! sha-bang

#  警告：
#  --------
#  这个脚本有好多特征
#+ 这些特征在后边章节进行解释的

LOG_DIR=/var/log
ROOT_UID=0      # $UID为0的时候，用户才具有root用户权限
LINES=50        # 默认的保存行数
E_XCD=66        # 不能修改目录
E_NOTROOT=67    # 非root用户将以error退出

#  需要使用root用户来运行
if [ "$UID" -ne "$ROOT_UID" ]
then 
    echo "Must be root to run this script"
    exit $E_NOTROOT
fi

#  测试命令行参数是不是空
E_WRONGARGS=65  # 非数值参数视为错误的参数格式

case "$1" in
""      ) lines=50;;
*[!0-9]*) echo "Usage: `basename $0` file-to-cleanup"; exit $E_WRONGARGS;;
*       ) lines=$1;;
esac

#  老的更简单的方法
#  if [ -n "$1" ]
#  then
#      lines=$1
#  else
#      lines=$LINES    # 默认，如果不在命令行中指定
#  fi

# 在处理log file之前，再次确认一遍当前目录是否正确
cd /var/log || {
    echo "Cannot change to necessary directory." >&2
    exit $E_XCD;
}

#  老的更简单的方法
#  cd $LOG_DIR
#  
#  if [ `pwd` != "$LOG_DIR" ]  # 或者  if [ "$PWD" != "$LOG_DIR" ]
#  then 
#      echo "Can't change to $LOG_DIR"
#      exit $E_XCD
#  fi 

tail -$lines messages > mesg.temp # 保存log file消息的最后部分，lines行
mv mesg.temp messages

cat /dev/null > wtmp    #  ': > wtmp' 和 '> wtmp'相同
echo "Logs cleaned up."

exit
#  退出之前返回0
#+ 返回0表示成功









