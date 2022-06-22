h=1
flip=$(($RANDOM%2))

if [ $flip -eq $h ]
then
	echo "Heads";
else
	echo "Tails";
fi
