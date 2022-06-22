heads=1
headsCount=0
tailsCount=0

function winner(){
        echo "$1"
}

function winDiff {
    echo $(($1 >= $2 ? $1 - $2 : $2 - $1))
}

while [ $headsCount -lt 21 -a $tailsCount -lt 21 ]
do
        win="$( winner $(($RANDOM%2)) )"

        if [ $win -eq $heads ]
        then
                #echo "Heads";
                headsCount=$(($headsCount+1));
        else
                #echo "Tails";
                tailsCount=$(($tailsCount+1));
        fi
done

echo "Heads = $headsCount"
echo "Tails = $tailsCount"

diff="$( winDiff $headsCount $tailsCount )"

if [ $headsCount -gt $tailsCount ]
then
	echo "Heads won by $diff points.";
elif [ $headsCount -eq $tailsCount ]
then
	echo "It's a tie.";
else
	echo "Tails won by $diff points.";
fi
