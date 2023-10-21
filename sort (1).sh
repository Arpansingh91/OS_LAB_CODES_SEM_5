
echo "Enter the size of array: "
read n
echo "Enter the elements of array : "
for ((i=0;i<$n;i++))
do
	read arr[$i]
done
echo "Original array : ${arr[*]}"
insertion_sort() {
	local arr=("$@")
	local n=${#arr[@]}
	for ((i=1;i<n;i++));do
	key=${arr[i]}
	j=$((i-1))
	while ((j>=0 && arr[j]>key)); do
	arr[j+1]=${arr[j]}
	j=$((j-1))
	done

	arr[j+1]=$key
	done

	echo "${arr[@]}"
}

sorted_array=$(insertion_sort "${arr[@]}")
echo "Sorted array : ${sorted_array[@]}"
