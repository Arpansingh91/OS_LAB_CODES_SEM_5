echo -n "Enter the Year: "
read year
if [ $year -le 0 ]
	then
 	echo "Year not defined"
elif [ `expr $year % 400` -eq 0 ]
	then
	echo "Leap Year"
elif [ `expr $year % 100` -eq 0 ]
	then
		echo "Not Leap year"
elif [ `expr $year % 4` -eq 0 ]
	then
		echo "Leap Year"
else
	echo "Not Leap Year" 
fi
