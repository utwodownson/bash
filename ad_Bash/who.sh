#!/bin/bash
who # 显示系统上所有登录的用户
who xx xx # 讲任意两个参数传递到who中，都等价于who -m 列出详细信息
whoami # 与who -m 类似，但是只显示用户名
w # who的扩展版本

# 查看指定用户的进程
w | grep startx # 查看startx的进程
