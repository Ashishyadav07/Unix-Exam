#!/bin/bash

echo "Enter the first number:"
read a

echo "Enter the second number:"
read b

if [ $a -lt $b ]
then
  small=$a
else
  small=$b
fi

gcd=1
i=1
while [ $i -le $small ]
do
  if [ $((a % i)) -eq 0 ] && [ $((b % i)) -eq 0 ]
  then
    gcd=$i
  fi
  i=$((i + 1))
done

echo "GCD of $a and $b is: $gcd"
