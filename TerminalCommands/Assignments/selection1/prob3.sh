read -p "Enter a year (YYYY) : " year

expr1=$(($year%4))
expr2=$(($year%100))
expr3=$(($year%400))

#echo $expr1
#echo $expr2
#echo $expr3

if [ $year -ge 1000 -a $year -le 9999 ]
then
	if [ $expr1 -eq 0 -a $expr2 -ne 0 -o $expr3 -eq 0 ]
	then
		echo "$year is a Leap year";
	else
		echo "$year is not a leap year";
	fi
else
	echo "Please enter a valid year";
fi

