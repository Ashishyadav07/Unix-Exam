#!/bin/bash

echo "Enter the range (n):"
read n

echo "The prime numbers within the range 1 to $n are:"

for ((i=2; i<=n; i++))
do
  is_prime=1

  for ((j=2; j<=i/2; j++))
  do
    if [ $((i%j)) -eq 0 ]
    then
      is_prime=0
      break
    fi
  done

  if [ $is_prime -eq 1 ]
  then
    echo $i
  fi
done