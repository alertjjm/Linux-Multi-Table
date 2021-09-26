#!/bin/bash
if [ $# -ne 2 ]
then
    echo "Usage: ./multi-table num1 num2"
    exit 1
elif [ $1 -lt 0 ] || [ $2 -lt 0 ] || [ $1 -gt 9 ] || [ $2 -gt 9 ]
then
    echo "Error: The arguments must be integers in range of 1 ~ 9"
    exit 1
fi
for i in $(seq 1 $1)
do
    for j in $(seq 1 $2)
    do
        result=`expr $i \* $j`
        echo -n "$i*$j=$result  "
    done
echo
done
