#!/bin/bash
find /home/slynux
find . -print # 打印文件和目录列表
              #+ -print 是用 '\n' 作为分隔符
              #+ -print0 是用 '\0' 来分隔的

find /home/slynux -name "*.txt" -print
find /home/slynux -iname "*.txt" -print # iname忽略大小写
find . \( -name "*.txt" -o -name "*.pdf" \) -print # \( \) 是为了形成一个整体，-o是或者
find /home/slynux -path "*slynux*" -print # 路径当中有slynux就可以
find /home/slynux -regex "[a-z0-9]+@[a-z0-9]+.[a-z0-9]+" # +表明是一个或者多个 -regex 是正则匹配
find . -iregex ".*\(\.py\|\.sh\)$" # 忽略大小写
find . ! -name "*.txt" -print

find . -maxdepth 1 -type f -print
find . -mindepth 2 -type f -print # 至少深度2

find . -type l -print

find . -type f -atime -7 -print
find . -type f -mtime 7 -print
find . -type f -ctime +7 -print

find . -type f -name "*.swp" -delete
find . -type f -perm 644 -print # 权限644

find . -type f -user slynux -print # 用户

