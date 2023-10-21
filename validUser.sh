echo "--------Valid User-----------"
echo "Enter user name"
read name
if [ `grep -c $name /etc/passwd` -eq 0  ]
then
	echo  "InValid User"
else
	echo "Valid User"
fi

