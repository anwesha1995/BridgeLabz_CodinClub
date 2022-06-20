a=20
b=10
c=$((a+b))
d=$((a-b))
echo "Sum of 2 numbers is: $c"
echo "Difference of 2 numbers is: $d"
n=$((RANDOM))
echo "Random number: $n"
m=$((RANDOM%5))
echo "Random number from 0-4: $m"
x=$((RANDOM%5+2))
echo "Random number from 2-4: $x"
read -p "Enter your name:" name
echo "Hello $name"
