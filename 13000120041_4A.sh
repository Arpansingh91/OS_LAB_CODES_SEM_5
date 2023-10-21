ch=0
while [ $ch -ne 6 ]
do
echo "Enter your choice"
echo "1. create a Students.dat file"
echo "2. sort the records in reverse order of roll no."
echo "3. replace lower case letters with uppercase letters."
echo "4. find records with unique names and append it to Students.dat"
echo "5. display 2nd and 3rd lines from Students.dat"
echo "6. exit"
read ch
case $ch in
1)#creating a student file(Students1.dat)
	echo "Name|Roll|Phone|Address"  > Students1.dat
	echo "Arpan|13000120041|9772086635|Kestopur" >> Students1.dat
	echo "Aryan|13000120042|52617819199|DumDum" >> Students1.dat
	echo "Nayan|16727827878|92363527281|Baguati" >> Students1.dat
	echo "Rahul|13001262728|92352721819|Saltlake" >> Students1.dat
	echo "Stuti|13241661788|928736216181|DumDum" >> Students1.dat
	echo "Ram|139282819191|98262617811|Howrah" >> Students1.dat
	echo "Mohan|1525677881|9632778281|Purulia" >> Students1.dat
	;;
2)#sort the records in reverse order of Roll no
	sort -t'|' -k2,2nr Students1.dat > Sorted.dat
	;;
3)#replace lower case letters with uppercase letters
	tr 'a-z' 'A-Z' < Sorted.dat > Sorted_uppercase.dat
	;;
4)#find records with unique names and append it to Students.dat
	sort -t'|' -k1,1 Sorted_uppercase.dat | uniq -u -w 20  >> Students1.dat
	;;
5)#display 2nd and 3rd lines from Students.dat
	head -n 3 Students1.dat | tail -n 2
	;;
	
6)exit
;;
esac
done

