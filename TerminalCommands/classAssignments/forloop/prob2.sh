n=$1
echo "Value of n: $n"
nhrmnc=0
for (( i=1;i<=$n;i++ ))
do
	hrmnc=`awk "BEGIN {print 1 / $i }"`
	echo "$i th harmonic number= $hrmnc"
	nhrmnc=`awk "BEGIN {print $hrmnc + $nhrmnc }"`
done

echo "Sum of $n harmonic numbers= $nhrmnc"
