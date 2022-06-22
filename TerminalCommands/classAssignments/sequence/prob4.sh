#add and average
sum=0
avg=0

for((num=1;num<=5;num++))
do
	n=$((RANDOM % ((99-10+1)) + 10))
	echo $n
	sum=$((sum+n))
	avg=$((sum/num))
done

echo "Sum of 5 random 2 digit numbers= $sum"
echo "Average of 5 random 2 digit numbers= $avg"
