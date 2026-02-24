#!/bin/bash

Number=$1

if [ $Number -ge 100 ]
then
  echo "givern Number : $Number  is greater than  or equal to 100"
else
  echo "givern Number : $Number  is less than  or not equal to 100"
fi
