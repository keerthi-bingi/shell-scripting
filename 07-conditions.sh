#!/bin/bash

echo "Enter the number"
read  NUMBER

# -lt lessthan
# -gt greaterthan
# -eq equals
# -ne not equals

if [ $NUMBER -gt 30 ]; then
  echo "$NUMBER is greater than 30"

elif [ $NUMBER -lt 30 ]; then
  echo "$NUMBER is lessthan than 30"

else
  echo "$NUMBER equals 30"

fi