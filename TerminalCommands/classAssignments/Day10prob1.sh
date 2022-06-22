read -p "Enter 3 numbers : " a b c
expr1=`awk "BEGIN {print $a + $b * $c }"`
expr2=`awk "BEGIN {print $a * $b + $c }"`
expr3=`awk "BEGIN {print $c + $a / $b }"`
expr4=`awk "BEGIN {print $a % $b + $c }"`

declare -A result
result[com1]=$expr1
result[com2]=$expr2
result[com3]=$expr3
result[com4]=$expr4
declare -a array
counter=0
for value in ${result[@]}
do
	array[$counter]=$value
	counter=$(($counter+1))
done
#echo ${array[@]}

sortDesc(){
         printf '%s\n' "$@" | sort -nr
}


sortAsc(){
	 printf '%s\n' "$@" | sort -n
}

echo "Computation result sorted in Descending order:"
sortDesc "${array[@]}"

echo "Computation result sorted in Ascending order:"
sortAsc "${array[@]}"
 
