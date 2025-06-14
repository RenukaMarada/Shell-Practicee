#!/bin/bash

# script to check biggest number using conditions

echo "enter a:"
read a
echo "enter b:"
read b
echo "enter c:"
read c

if [ $a -eq $b -a $a -eq $c ]; then
    echo "All the three numbers are equal"
elif [[ $a -eq $b || $b -eq $c || $c -eq $a ]]; then
    echo "I cannot figure out which number is largest"
else
    if [ $a -gt $b -a $a -gt $c ]; then
        echo "$a is biggest number"
    elif [ $b -gt $a -a $b -gt $c ]; then
        echo "$b is biggest number"
    elif [ $c -gt $a -a $c -gt $b ]; then
        echo "$c is biggest number"
    fi
fi

#-----------------------------------------------------------

read n1
read n2
read n3
if [[ $n1 == 0 || $n2 == 0 || $n3 == 0 ]]; then
    echo "command line arguments are missing"
elif [[ $n1 == $2 && $n2 == $n3 ]]; then
    echo "All the three numbers are equal"
elif [[ $n1 == $n2 || $n2 == $n3 || $n3 == $n1 ]]; then
    echo "I cannot figure out which number is biggest"
else
    if [[ $n1 > $n2 && $n1 > $n3 ]]; then
        echo "$n1 is Biggest number"
    elif [[ $n2 > $n1 && $n2 > $n3 ]]; then
        echo "$n2 is Biggest number"
    else
        echo "$n3 is Biggest number"
    fi
fi

#----------------------------------------------------------------

read num1
read num2
read num3
if [ $num1 == $num2 -a $num1 == $num3 ]; then
    echo "All the three numbers are equal"
elif [ $num1 == $num2 -o $num1 == $num3 -o $num2 == $num3 ]; then
    echo "I cannot figure out which number is largest"
else
    if [ $num1 -gt $num2 -a $num1 -gt $num3 ]; then
        echo "$num1 is largest numer"
    elif [ $num2 -gt $num1 -a $num2 -gt $num3 ]; then
        echo "$num2 is largest number"
    else
        echo "$num3 is largest number"
    fi
fi

#-----------------------------------------------------------------

#!/bin/bash

# Script to find the largest of three numbers

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

if [[ "$num1" -eq "$num2" && "$num2" -eq "$num3" ]]; then
    echo "All three numbers are equal"

elif [[ "$num1" -eq "$num2" || "$num2" -eq "$num3" || "$num3" -eq "$num1" ]]; then
    echo "I cannot figure out which number is largest"

else
    if (( num1 > num2 && num1 > num3 )); then
        echo "$num1 is the largest number"
    elif (( num2 > num1 && num2 > num3 )); then
        echo "$num2 is the largest number"
    else
        echo "$num3 is the largest number"
    fi
fi

#-----------------------------------------------------------------

num1=$1
num2=$2
num3=$3

if [[ -z "$num1" || -z "$num2" || -z "$num3" ]]; then
    echo "Usage: $0 <num1> <num2> <num3>"
    exit 1
fi

if [[ "$num1" -eq "$num2" && "$num2" -eq "$num3" ]]; then
    echo "All three numbers are equal"
elif [[ "$num1" -eq "$num2" || "$num2" -eq "$num3" || "$num3" -eq "$num1" ]]; then
    echo "I cannot figure out which number is largest"
else
    if (( num1 > num2 && num1 > num3 )); then
        echo "$num1 is the greatest"
    elif (( num2 > num1 && num2 > num3 )); then
        echo "$num2 is the greatest"
    else
        echo "$num3 is the greatest"
    fi
fi