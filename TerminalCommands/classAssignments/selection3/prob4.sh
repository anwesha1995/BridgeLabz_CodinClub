echo "Choose an unit conversion option number:"
echo "	1. Feet to Inch"
echo "	2. Feet to Meter"
echo "	3. Inch to Feet"
echo "	4. Meter to Feet"
read -p "Enter the option: " opt
read -p "Enter the value to convert: " val
case $opt in
1)
inch=$(($val*12))
echo "$val Feet = $inch Inch"
;;
2)
meter=`awk "BEGIN {print $val * 0.3048 }"`
echo "$val Feet = $meter Meter"
;;
3)
feet=`awk "BEGIN {print $val / 12 }"`
echo "$val Inch = $feet Feet"
;;
4)
feet=`awk "BEGIN {print $val * 3.28084 }"`
echo "$val Meter = $feet Feet"
;;
*)
echo "Wrong choice...Please enter correct option"
;;
esac
