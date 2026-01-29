#!/bin/bash

echo "Enter the number:"
read num

NUM=$(($num % 2))

if [ $NUM -eq 0 ]; then
  echo "$num  is Even"

else
  echo "$num is Odd" 

fi