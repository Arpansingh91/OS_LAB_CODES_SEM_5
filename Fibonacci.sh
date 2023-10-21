echo "------Fibonacci Series--------"
echo "Enter the no of term"
read n
if [ $n -eq 1 ]
then
	echo "0"
elif [ $n -eq 2 ]
then
	echo "1"
elif [ $n -lt 0 ]
then
	echo "Fibonacci of Negative number doesn't exist"
else
	a=0
	b=1
	echo $a
	echo $b
	for((i=2;i<$n;i++))
	do
		fib=`expr $a + $b`
		echo $fib
		a=$b	
		b=$fib
	done
fi

	
