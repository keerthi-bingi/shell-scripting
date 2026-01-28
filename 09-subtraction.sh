#!/bin/bash

echo "Enter the First number:"
read num1

echo "Enter the Second number:"
read num2

diff=$(($num1 - $num2))

echo "The difference is $diff"