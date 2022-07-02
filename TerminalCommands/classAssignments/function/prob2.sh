read -p "Enter 1st number: " n1
read -p "Enter 2nd number: " n2
function palindrome(){
for n in $1 $2
do
	pal=$n
	rev=0
	while [ $n -gt 0 ]
	do
		a=$(($n%10))
		n=$(($n/10))
		rev=$(($rev*10+$a))
	done

	if [ $pal -eq $rev ]
	then
        	echo "$pal is palindrome number";
	else
        	echo "$pal is not palindrome number";
	fi

done
}

palindrome $n1 $n2
