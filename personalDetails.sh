ch=0
while [ $ch -ne 3 ]
do
echo "1.Enter your personal details"
echo "2.Display your personal details"
echo "3.Exit"
read ch
case $ch in
1) echo "Set a password for your file"
   read data
   echo $data > personal.dat
   echo "Enter your details now, to stop enter EOF"
   read data
   while [ $data != "EOF" ]
	do
	echo $data >> personal.dat
        read data
        done
	;;
2) echo "Enter Password:"
   read atmpt
   read line < personal.dat
   if [ $atmpt=$line ]
   then 
	while read line
   	do
	#reading each line
	echo $line
	done < personal.dat
   else
	echo "Incorrectb Password"
   fi
   ;;
3) exit
   ;;
*) echo "Incorrect option"
   exit
   ;;
   esac
   done
  
   
   
