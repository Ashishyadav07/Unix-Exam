#!/bin/bash

echo "Enter the number of terms to generate:"
read n

a=1
b=5
c=3
d=10

for (( i=1; i<=$n; i++ ))
do
  if (( $i % 4 == 1 ))
  then
    echo -n "$a "
    a=$((a + 4))
  elif (( $i % 4 == 2 ))
  then
    echo -n "$b "
    b=$((b + 10))
  elif (( $i % 4 == 3 ))
  then
    echo -n "$c "
    c=$((c + 4))
  else
    echo -n "$d "
    d=$((d + 10))
  fi
done

echo ""
