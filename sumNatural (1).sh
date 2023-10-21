echo "-------Sum of n Natural numbers using command line arguments------"
if [ $# -eq 0 ]
then
	echo "Error: Please provide at least one argument"
	exit 1
fi
sum=0
for num in "$@"
do
	if ! [[ "$num" =~ ^[0-9]+$ ]]
	then
		echo "Error: "$num" is not a valid positive integer"
		exit 1
	fi
	sum=`expr $sum + $num`
done
echo "The summation of N natural numbers is: $sum"
