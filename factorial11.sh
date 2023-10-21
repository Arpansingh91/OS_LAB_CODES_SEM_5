echo "----Factorial----"
echo "Enter a number : "
read a
i=1
p=1
if [ $a -lt 0 ]
then
	echo "Factorial not defined"

else
while [ $i -le $a ]
do
	p=`expr $p \* $i`
	i=`expr $i + 1`
done
echo "Factorial of $a = $p"
fi
