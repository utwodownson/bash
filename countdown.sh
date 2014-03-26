#! /bin/bash
#Filename: countdown.sh
echo -n Count:
tput sc

count=0
while true;
do
  if [ $count -lt 10 ];
  then
    let count++;
    sleep 1;
    tput rc
    tput ed
    echo -n $count;
  else
    echo ""
    exit 0;
  fi
done
