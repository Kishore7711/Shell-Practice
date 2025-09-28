#!/bin/bash


##### if a number is divided by 2, then it is even number, else it is odd number
## 15/2 = 7 reminder 1
## 20/2 = 10 reminder 0

echo "please enter a Number :"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ] ; then
    echo "Given number is $NUMBER is EVEN Number"
else
    echo "Given number is $NUMBER is ODD Number"
fi