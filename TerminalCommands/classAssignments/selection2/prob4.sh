read -p "Enter three numbers : " a b c

expr1=$(($a+$b*$c))
#echo $expr1
expr2=$(($a%$b+$c))
#echo $expr2
expr3=$(($c+$a/$b))
#echo $expr3
expr4=$(($a*$b+$c))
#echo $expr4

if [ $expr1 -ge $expr2 -a $expr1 -ge $expr3 -a $expr1 -ge $expr4 ]
then
	echo "First expression gives $expr1 and that is maximum";
elif [ $expr2 -ge $expr1 -a $expr2 -ge $expr3 -a $expr2 -ge $expr4 ]
then
        echo "Second expression gives $expr2 and that is maximum";
elif [ $expr3 -ge $expr1 -a $expr3 -ge $expr2 -a $expr3 -ge $expr4 ]
then
        echo "Third expression gives $expr3 and that is maximum";
else
	echo "Fourth expression gives $expr4 and that is maximum";
fi

if [ $expr1 -le $expr2 -a $expr1 -le $expr3 -a $expr1 -le $expr4 ]
then
        echo "First expression gives $expr1 and that is minimum";
elif [ $expr2 -le $expr1 -a $expr2 -le $expr3 -a $expr2 -le $expr4 ]
then
        echo "Second expression gives $expr2 and that is minimum";
elif [ $expr3 -le $expr1 -a $expr3 -le $expr2 -a $expr3 -le $expr4 ]
then
        echo "Third expression gives $expr3 and that is minimum";
else
	echo "Fourth expression gives $expr4 and that is minimum";
fi

