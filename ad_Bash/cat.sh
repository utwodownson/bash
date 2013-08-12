#!/bin/bash
# cat 用法
cat file1 file2 file3
cat file.txt
echo 'Text through stdin' | cat - file.txt # 链接echo的内容和file中的内容

cat -s file.txt # 压缩连续空白行
cat multi_blank.txt | tr -s '\n' # 无空白行

cat -T file.py # 显示制表符为 ^|
cat -n # 显示行号 
