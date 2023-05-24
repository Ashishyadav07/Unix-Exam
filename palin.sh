#!/bin/bash

echo "Enter a string:"
read str
reverse=$(echo $str | rev)
if [ "$str" == "$reverse" ]
then
  echo "$str is a palindrome string."
else
  echo "$str is not a palindrome string."
fi
