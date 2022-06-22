function flip(){
        coin1=$(($RANDOM%2))
        coin2=$(($RANDOM%2))
        coin3=$(($RANDOM%2))
        comb1=$coin1
	comb2=$coin1$coin2
	comb3=$coin1$coin2$coin3
}

flip
echo $comb1
flip
echo $comb2
flip
echo $comb3
