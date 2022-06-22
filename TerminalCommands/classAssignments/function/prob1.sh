echo "Converting between the different temperature scales"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read -p "Enter your choice : " choice
read -p "Enter the temparature : " temp
case $choice in
1))
	if (( $temp -ge 0 -a $temp -le 100 ))
	then
		degF=`awk "BEGIN {print ( $temp * 9 / 5 ) 
