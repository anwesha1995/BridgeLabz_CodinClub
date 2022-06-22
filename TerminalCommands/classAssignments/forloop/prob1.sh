n=$1
echo "Value of n :" $n
powerOfTwo=1

for (( i=0;i<=$n;i++ ))
do
	echo "$i th power of 2= $powerOfTwo"
	powerOfTwo=$(($powerOfTwo*2))
done
