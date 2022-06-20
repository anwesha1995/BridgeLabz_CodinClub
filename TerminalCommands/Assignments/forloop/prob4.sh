read -p "Enter the lower limit :" lower
read -p "Enter the upper limit :" upper

for (( num=$lower; num<=$upper; num++ ))
do
	#echo $num
	check=0
	for (( i=2; i<=$num-1; i++ ))
        do
		if [ $(($num%$i)) -eq 0 ]
        	then
			check=1;
                	break;
        	fi
	done

	if [ $check -eq 0 ]
	then
		echo "$num is prime number";
	fi
done
