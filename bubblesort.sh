arr=(3 6 1 8 4 9 2 5 7 10 14 11 13 12)
n=${#arr[@]}
for ((i=0;i<$n-1;i++))
do
  for ((j=0;j<$n-$i-1;j++))
  do
    if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
    then
      temp=${arr[j]}
      arr[j]=${arr[$((j+1))]}
      arr[$((j+1))]=$temp
    fi
  done
done
echo "Sorted array: ${arr[@]}"
