read -p "Enter a unit i.e. 1,10,100,1000 etc. :" unit

case $unit in
1)
echo "One"
;;
10)
echo "Ten"
;;
100)
echo "Hundred"
;;
1000)
echo "Thousand"
;;
10000)
echo "Ten Thousand"
;;
100000)
echo "Lakh"
;;
1000000)
echo "Ten Lakh"
;;
10000000)
echo "Crore"
;;
*)
echo "Wrong input...Please maintain the format"
;;
esac
