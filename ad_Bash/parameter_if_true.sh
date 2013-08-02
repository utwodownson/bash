#!/bin/bash
#  检测脚本被调用的参数数量

E_WORNG_ARGS=65
Number_of_expected_args=
script_parameters="-a -h -m -z"
#       -a == all  -h == help

if [ $# -ne $Number_of_expected_args ]
then
    echo "Usage: `basename $0` $script_parameters"
    exit $E_WRONG_ARGS
fi

exit 0
