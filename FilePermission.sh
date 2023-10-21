ch=0
while [ $ch -ne 4 ]
do

echo "1.Check permissions of the file"
echo "2.Check the no of files and folders under the current directory"
echo "3.Show last modification time of the file under the current directory"
echo "4.Exit"
read ch
case $ch in
1) echo "Enter file name"
   read FILE
   if [[ ! -e "${FILE}" ]]
   then
       echo "The file "${FILE}" doesn't exists"
   else
       ls -l ${FILE}
  fi
;;
2) dcount=0
   fcount=0
   for i in ls
   do
   	fcount=$((fcount + 1))
   done
   for i in `ls -d`
   do
        dcount=$((dcount + 1))
   done
   if [ `ls -d` = "." ]
   then
	dcount=0
   fi
   fcount=$((fcount - dcount))
   echo "No of Files: $fcount"
   echo "No of Folders: $dcount"
   ;;
3) echo "Enter file name"
   read FILE
   if [[ ! -e $FILE ]]
   then
      echo  "The file "$FILE" doesn't exists"
   else
      echo  "Last Modifiaction time: $( stat -c%y $FILE )"
   fi
   ;;
4) exit
;;
esac
done
