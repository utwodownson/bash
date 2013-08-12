#!/bin/bash
script -t 2> timing.log -a output.session # 录制 exit退出
                                          #+ t选项是把时序数据导入stderr

scriptreplay timing.log output.session # 播放

# 实现同步
Terminal1
    mkfifo scriptfifo

Terminal2
    cat scriptfifo

Terminal1
    script -f scriptfifo
    commands;

Terminal2
    cat scriptfifo
