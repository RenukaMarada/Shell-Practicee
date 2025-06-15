#!/bin/bash

# ---------- For Loop ----------
echo "Numbers from 1 to 5 using FOR loop:"
for i in {1..5}
do
    echo "Number: $i"
done

echo "-----------------------------"

# ---------- While Loop ----------
echo "Numbers from 1 to 5 using WHILE loop:"
counter=1
while [ $counter -le 5 ]
do
    echo "Counter: $counter"
    ((counter++))
done

echo "-----------------------------"

# ---------- Until Loop ----------
echo "Numbers from 1 to 5 using UNTIL loop:"
num=1
until [ $num -gt 5 ]
do
    echo "Num: $num"
    ((num++))
done
