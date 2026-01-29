#!/bin/bash

for i in {1..100}
do
  NUM=$(($i % 2))
  if [ $NUM -eq 0 ]; then
  echo $i
  fi
done