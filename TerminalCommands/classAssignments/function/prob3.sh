read -p "Enter a number: " n

function checkPrime(){
	local count=0
	if [ $1 -le 1 ]
	then
        	echo "Please enter a valid input";
        	exit;
	fi
	for (( i=2;i<=$1-1;i++ ))
	do
        	if [ $(($1%$i)) -eq 0 ]
        	then
                #	echo "$1 is not prime number"
		#	break;
		count=$(($count+1));
		fi
	done
	if [ $count -eq 0 ]
	then
		res="true";
	else
		res="false";
	fi
}

function checkPalindrome(){
	pal=$n
        rev=0
        while [ $n -gt 0 ]
        do
                a=$(($n%10))
                n=$(($n/10))
                rev=$(($rev*10+$a))
        done
	echo $rev
#        if [ $pal -eq $rev ]
#        then
#                echo "$pal is palindrome number";
#        else
#                echo "$pal is not palindrome number";
#        fi

}
prime=$( checkPrime $n )
if [ $prime=="true" ]
then
	echo "$n is Prime number";
else
	echo "$n is not Prime number";
fi

palin=$( checkPalindrome $n )
if [ $n -eq $palin ]
then
	echo "$n is Palindrome number";
	pp=$( checkPrime $palin );
	if [ $pp=="true" ]
	then
		echo "Palindrome of $n is Prime number";
	else
		echo "Palindrome of $n is not Prime number";
	fi
else
	echo "$n is not Palindrome number";
fi
