heads=1
headsCount=0
tailsCount=0
i=1
function winner(){
        echo "$1"
}

function winDiff() {
	diff=$(($1 >= $2 ? $1 - $2 : $2 - $1))
}

function winCount(){
         win="$( winner $(($RANDOM%2)) )"

        if [ $win -eq $heads ]
        then
                #echo "Heads";
                headsCount=$(($headsCount+1));
        else
                #echo "Tails";
                tailsCount=$(($tailsCount+1));
        fi
}

function tie(){
        while :
        do
                winCount
                if [ $diff -eq 2 ]
                then
                        break;
                fi
        done
}

while [ $headsCount -lt 21 -a $tailsCount -lt 21 ]
do
        winDiff $headsCount $tailsCount
        if [ $i -eq 42 -a $diff -eq 0 ]
        then
                tie;
        else
                winCount;
        fi
done

echo "Heads = $headsCount"
echo "Tails = $tailsCount"

winDiff $headsCount $tailsCount

if [ $headsCount -gt $tailsCount ]
then
        echo "Heads won by $diff points.";
elif [ $headsCount -eq $tailsCount ]
then
        echo "It's a tie.";
else
        echo "Tails won by $diff points.";
fi
