echo "Sum of Digits of a Number"
echo "Enter a number : "
read n
sum=0
while [ $n -ne 0 ]
do
	d=`expr $n % 10`
	sum=`expr $d + $sum`
	n=`expr $n / 10`
done
echo "Sum of digits = $sum"
