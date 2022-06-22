win=$(($RANDOM%2))

if [ $win -eq 1 ]
then
        echo "Heads";
else
        echo "Tails";
fi

