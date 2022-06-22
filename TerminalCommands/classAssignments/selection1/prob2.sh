read -p "Enter a date: " date
read -p "Enter number of month: " month
temp=$(($month%2))

if [ $temp -eq 0 ]
then
	if [ [ $month -eq 4 -a $date -le 31 ] -o [ $month -eq 6 -a $date -le 20 ] ]
		echo "true";
	else
		echo "false";
	fi
else
	if [ [ $month -eq 3 -a $date -ge 20 -a $date -le 31 ] -o [ $month -eq 5 -a $date -le 31 ] ]
	then
		echo "true";
	else
		echo "false";
	fi
fi
