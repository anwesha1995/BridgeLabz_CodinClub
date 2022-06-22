count=0
declare -A doublet

function flip(){
        coin1=$(($RANDOM%2))
	coin2=$(($RANDOM%2))
	echo "$coin1$coin2"
}

for (( i=1; i<=100; i++ ))
do
	count=$(($count+1))
        comb=$( flip )

        if [ $comb -eq 11 ]
        then
                #echo "HH";
		hhCount=$(($hhCount+1));
                doublet[HH]=$hhCount;
	elif [ $comb -eq 10 ]
        then
                #echo "HT";
                htCount=$(($htCount+1));
                doublet[HT]=$htCount;
	elif [ $comb -eq 01 ]
        then
                #echo "TH";
                thCount=$(($thCount+1));
                doublet[TH]=$thCount;

        else
                #echo "TT";
                ttCount=$(($ttCount+1));
		doublet[TT]=$ttCount;
        fi

done
function percentage(){
	valCount=${doublet[$1]}
	percent=`awk "BEGIN {print $valCount/$count*100}"`
	echo $percent
}

hhPer="$( percentage HH )"
htPer="$( percentage HT )"
thPer="$( percentage TH )"
ttPer="$( percentage TT )"

echo "Doublet Combination percentage for HH=$hhPer, HT=$htPer, TH=$thPer and TT=$ttPer"

