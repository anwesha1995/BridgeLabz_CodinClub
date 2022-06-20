read -p "Enter a unit i.e. 1,10,100,1000 etc. :" unit

if [ $unit -eq 1 ]
then
	echo "One";
elif [ $unit -eq 10 ]
then
	echo "Ten";
elif [ $unit -eq 100 ]
then
	echo "Hundred";
elif [ $unit -eq 1000 ]
then
        echo "Thousand";
elif [ $unit -eq 10000 ]
then
        echo "Ten Thousand";
elif [ $unit -eq 100000 ]
then
        echo "Lakh";
elif [ $unit -eq 1000000 ]
then
        echo "Ten Lakh";
elif [ $unit -eq 10000000 ]
then
        echo "Crore";
else
        echo "Wrong input...Please maintain the format";
fi

