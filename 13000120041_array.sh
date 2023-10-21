declare -a arr
echo "Enter the number of element: "
read a
echo "Enter the number: "
 for ((i=0; i<a; i++))
   do
  
   read arr[$i]

   done
echo "Array is: "
echo ${arr[*]}
for((i=0; i<$a; i++))
do
   for((j=0; j<$((a-i-1)); j++))
   do
     if [ ${arr[$j]} -gt ${arr[$((j+1))]} ]
      then
         temp=${arr[$j]}
	 arr[$j]=${arr[$((j+1))]}
	 arr[$((j+1))]=$temp
      fi
   done
done
echo "shorted array is: ${arr[*]} "

