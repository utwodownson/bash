#!/bin/bash
#  显示时间和日期

echo "The number of days since the year's beginning is `date +%j`."
echo "The number of seconds elapsed since 01/01/1970 is `date +%s`."

prefix=temp
suffix=$(date +%s) 
filename=$prefix.$suffix
echo $filename # 产生了一个唯一的文件

exit 0
