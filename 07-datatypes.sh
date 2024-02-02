#!/bin/bash

number1=$1
number2=$2

sum=$($number1+$number2)

echo "Total is :$sum "
echo "How many agruments are passed : $#"
echo "All agrs passed: $@ "
echo "Script name : $0"