read -p "Enter a number (>1) to check :" num
if [ $num -le 1 ]
then
	echo "Please enter a valid input";
	exit;
fi
for (( i=2;i<=$num-1;i++ ))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		echo "$num is not prime number"
		exit;
	fi
done
echo "$num is prime number"
