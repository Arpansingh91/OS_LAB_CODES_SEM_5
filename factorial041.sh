echo "------Factorial of the Number-------"
echo "Enter the number"
read n
if [ $n -lt 0 ]
then
	echo "Factorial of Negative Numbers doesn't exist"
elif [ $n -eq 0 ]
then
	echo "1"
else
	fac=1
	for((i=$n;i>=1;i--))
	do
		fac=`expr $fac \* $i`
	done
	echo "The Factorial of $n is $fac"
fi 

