#!/bin/bash
NEW_LIFE=2011/04/26
HER=1987/10/07
ME=1987/10/20

echo "The number of days since the year's beginning is `date +%j`."

# 将基础时间转换成时间戳
time1=$(date +%s -d "$NEW_LIFE")
time2=$(date +%s)
time1=$((time2 - time1))
time1=$(($time1/60/60/24))

echo "The number of days since the new life is $time1."

time1=$(date +%s -d "$HER")
time1=$((time2 - time1))
time1=$(($time1/60/60/24))

echo "The number of days since her born is $time1."

time1=$(date +%s -d "$ME")
time1=$((time2 - time1))
time1=$(($time1/60/60/24))

echo "The number of days since my born is $time1."
