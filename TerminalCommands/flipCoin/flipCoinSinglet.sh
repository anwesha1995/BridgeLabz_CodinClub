count=0
declare -A singlet

function flip(){
        coin=$(($RANDOM%2))
	comb=$coin
}

for (( i=1; i<=100; i++ ))
do
	count=$(($count+1))
        flip

        if [ $comb -eq 1 ]
        then
                #echo "Heads";
		headsCount=$(($headsCount+1));
                singlet[H]=$headsCount;
        else
                #echo "Tails";
                tailsCount=$(($tailsCount+1));
		singlet[T]=$tailsCount;
        fi

done

function percentage(){
        valCount=${singlet[$1]}
        percent=`awk "BEGIN {print $valCount/$count*100}"`
        echo $percent
}

headPer="$( percentage H )"
tailPer="$( percentage T )"

echo "Singlet Combination percentage for heads=$headPer and tails=$tailPer"

