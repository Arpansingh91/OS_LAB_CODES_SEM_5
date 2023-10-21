echo -e "Enter the no for which you have to find common log $1"
echo "scale=2;l($1)/l(10)" | bc -l

