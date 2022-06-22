read -a temporaryArray
length=`echo "${#temporaryArray[@]}"`
#echo $length

function checkElement(){
	arr=("$@")
	for i in "${arr[@]}"
	do
		if [ $2=="${arr[$i]}" ]
		then
			s="true";
		else
			s="false";
		fi
	done
	echo $s
}


declare -a checked
for (( j=0;j -lt $lenght;j++ ))
do
	count=0
	checkElement "${checked[@]}" "${temporaryArray[j]}"
	if [ $s -eq "false" ]
	then
		for (( k=0;k<$length;k++ ))
		do
			if [ temporaryArray[$j] -eq temporaryArray[$k] ]
			then
				count=$(($count+1));
			fi
		done
		echo "${temporaryArray[j]} $count"
		checked["${#checked[@]}"]="${temporaryArray[j]}";
	fi
done
