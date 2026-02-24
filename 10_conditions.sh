#!/bin/bash
#set -e
#set -x
NUMBER=$1

if [ "$NUMBER" -le 30 ]
then
    echo "Given number: $NUMBER is less than or equal to 30"
else
    echo "Given number: $NUMBER is greater than 30"
fi
