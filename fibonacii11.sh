echo "----Fibonacci Series----"
echo "Enter a number : " 
read n
if [ $n -lt 0 ]
	then
		echo "Fibonacci is not defined"
elif [ $n -eq 1 ]
then
	echo "0"
elif [ $n -eq 2 ]
then 
	echo "1"
else
	p=0
	d=1
	echo "0"
	echo "1"
	for ((i=2;i<$n; i++))
	do
		f=`expr $p + $d`
		echo "$f"
		p=$d
		d=$f

	done
fi
