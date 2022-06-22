max=100
min=999
for ((i=1;i<=5;i++))
do
	num=$[($RANDOM % $[999-100+1])+100]
	echo "5 Ranodom 3 digit numbers: $num"
	if [ $num -gt $max ]
	then
		max=$num;
	fi

	if [ $num -lt $min ]
	then
		min=$num;
	fi
done
echo "Minimum value : $min"
echo "Maximum value : $max"
