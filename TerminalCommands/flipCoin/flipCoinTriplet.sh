count=0
declare -A triplet

function flip(){
        coin1=$(($RANDOM%2))
	coin2=$(($RANDOM%2))
	coin3=$(($RANDOM%2))
	echo "$coin1$coin2$coin3"
}

for (( i=1; i<=100; i++ ))
do
	count=$(($count+1))
        comb=$( flip )
        if [ $comb -eq 111 ]
        then
                #echo "HHH";
		hhhCount=$(($hhhCount+1));
                triplet[HHH]=$hhhCount;
	elif [ $comb -eq 110 ]
        then
                #echo "HHT";
                hhtCount=$(($hhtCount+1));
                triplet[HHT]=$hhtCount;
	elif [ $comb -eq 101 ]
        then
                #echo "HTH";
                hthCount=$(($hthCount+1));
                triplet[HTH]=$hthCount;
	elif [ $comb -eq 100 ]
        then
                #echo "HTT";
                httCount=$(($httCount+1));
                triplet[HTT]=$httCount;
	elif [ $comb -eq 011 ]
        then
                #echo "THH";
                thhCount=$(($thhCount+1));
                triplet[THH]=$thhCount;
	elif [ $comb -eq 010 ]
        then
                #echo "THT";
                thtCount=$(($thtCount+1));
                triplet[THT]=$thtCount;
	elif [ $comb -eq 001 ]
        then
                #echo "TTH";
                tthCount=$(($tthCount+1));
                triplet[TTH]=$tthCount;
        else
                #echo "TTT";
                tttCount=$(($tttCount+1));
		triplet[TTT]=$tttCount;
        fi

done

function percentage(){
        valCount=${triplet[$1]}
        percent=`awk "BEGIN {print ($valCount/$count*100)}"`;
        echo $percent
}


hhhPer="$( percentage HHH )"
hhtPer="$( percentage HHT )"
hthPer="$( percentage HTH )"
httPer="$( percentage HTT )"
thhPer="$( percentage THH )"
thtPer="$( percentage THT )"
tthPer="$( percentage TTH )"
tttPer="$( percentage TTT )"

echo "Triplet Combination percentage for HHH=$hhhPer, HHT=$hhtPer, HTH=$hthPer, HTT=$httPer, THH=$thhPer, THT=$thtPer, TTH=$tthPer and TTT=$tttPer"

