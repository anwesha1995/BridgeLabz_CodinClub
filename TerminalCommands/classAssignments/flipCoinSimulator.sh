heads=1
headsCount=0
tailsCount=0
function winner(){
	echo "$1"
}
for (( i=0; i<10; i++ ))
do
	win="$( winner $(($RANDOM%2)) )"

	if [ $win -eq $heads ]
	then
		echo "Heads";
		headsCount=$(($headsCount+1));
	else
		echo "Tails";
		tailsCount=$(($tailsCount+1));
	fi
done
echo $headsCount
echo $tailsCount
