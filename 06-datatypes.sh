#!/bin/bash

#sum of 2 numbers
NUM1=$1
NUM2=$2

SUM=$(($NUM1+$NUM2))

echo "The sum value is $SUM"


#Array
FRUITS=("Apple" "Banana" "Pomo" "Orange")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"
echo "Fourth Fruit is: ${FRUITS[3]}"