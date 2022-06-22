count=0
declare -A singlet
declare -A doublet
declare -A triplet

function flip(){
        coin1=$(($RANDOM%2))
        coin2=$(($RANDOM%2))
        coin3=$(($RANDOM%2))
        comb1=$coin1
        comb2=$coin1$coin2
        comb3=$coin1$coin2$coin3
}

for (( i=1; i<=100; i++ ))
do
	flip
        count=$(($count+1))

#singlet
        if [ $comb1 -eq 1 ]
        then
                #echo "Heads";
		headsCount=$(($headsCount+1));
                singlet[H]=$headsCount;
        else
                #echo "Tails";
                tailsCount=$(($tailsCount+1));
                singlet[T]=$tailsCount;
        fi

#doublet
	if [ $comb2 -eq 11 ]
        then
                #echo "HH";
                hhCount=$(($hhCount+1));
                doublet[HH]=$hhCount;
        elif [ $comb2 -eq 10 ]
        then
                #echo "HT";
                htCount=$(($htCount+1));
                doublet[HT]=$htCount;
        elif [ $comb2 -eq 01 ]
        then
                #echo "TH";
                thCount=$(($thCount+1));
                doublet[TH]=$thCount;

        else
                #echo "TT";
                ttCount=$(($ttCount+1));
                doublet[TT]=$ttCount;
        fi

#triplet
	if [ $comb3 -eq 111 ]
        then
                #echo "HHH";
                hhhCount=$(($hhhCount+1));
                triplet[HHH]=$hhhCount;
        elif [ $comb3 -eq 110 ]
        then
                #echo "HHT";
                hhtCount=$(($hhtCount+1));
                triplet[HHT]=$hhtCount;
        elif [ $comb3 -eq 101 ]
        then
                #echo "HTH";
                hthCount=$(($hthCount+1));
                triplet[HTH]=$hthCount;
        elif [ $comb3 -eq 100 ]
        then
                #echo "HTT";
                httCount=$(($httCount+1));
                triplet[HTT]=$httCount;
        elif [ $comb3 -eq 011 ]
         then
                #echo "THH";
                thhCount=$(($thhCount+1));
                triplet[THH]=$thhCount;
        elif [ $comb3 -eq 010 ]
        then
                #echo "THT";
                thtCount=$(($thtCount+1));
                triplet[THT]=$thtCount;
        elif [ $comb3 -eq 001 ]
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

sorting(){
	printf '%s\n' "$@" | sort -nr | head -1
}

maxS=$( sorting "${singlet[@]}" )
echo "Singlet max occurance after sorting: $maxS"
maxD=$( sorting "${doublet[@]}" )
echo "Doublet max occurance after sorting: $maxD"
maxT=$( sorting "${triplet[@]}" )
echo "Triplet max occurance after sorting: $maxT"

echo "Winning combination of Singlet is ${!singlet[$maxS]}"
echo "Winning combination of Doublet is ${!doublet[$maxD]}"
echo "Winning combination of Triplet is ${!triplet[$maxT]}"

