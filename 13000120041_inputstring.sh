echo "Enter any user name: "
read username
if grep -c $username /etc/passwd
  then
     echo "Valid username"
else
    echo "Invalid username"
fi
