#!/bin/bash

echo "Enter a number:"
read n

if [ $n -eq 0 ]
then
  echo "Fibonacci series: "
elif [ $n -eq 1 ]
then
  echo "Fibonacci series: 0"
else
  a=0
  b=1
  echo -n "Fibonacci series: $a $b"
  
  for (( i=2; i<$n; i++ ))
  do
    c=$((a + b))
    echo -n " $c"
    a=$b
    b=$c
  done
  
  echo ""
fi
