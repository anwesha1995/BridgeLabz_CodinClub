echo "Converting between the different temperature scales"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read -p "Enter your choice : " choice
read -p "Enter the temparature : " temp
function degF(){
	degF=`awk "BEGIN {print ( $1 * 9 / 5 ) + 32 }"`
	echo $degF
}

function degC(){
	degC=`awk "BEGIN {print ( $1 - 32 ) * 5 / 9 }"`
	echo $degC
}

case $choice in
1)
if [ $temp -ge 0 -a $temp -le 100 ]
then
	res="$( degF $temp )";
	echo "Temparature in Farenhite is $res";
else
	echo "Please enter temparature in range (0-100)";
fi
;;
2)
if [ $temp -ge 32 -a $temp -le 212 ]
then
	res="$( degC $temp )";
	echo "Temparature in Celcius is $res";
else
	echo "Please enter temparature in range (32-212)";
fi
;;
*)
echo "Wrong choice"
;;
esac
