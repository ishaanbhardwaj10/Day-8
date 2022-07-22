#!/bin/bash -x


declare -A diceRoll


switch=1
i=0
counter1=0
counter2=0
counter3=0
counter4=0
counter5=0
counter6=0

while [ $switch -gt 0 ]
do
	diceNum=$((RANDOM%6+1))
	diceRoll[$i]=$diceNum
	((i++))



	case $diceNum in
				1 )
					((counter1++))
				;;
				2 )
					((counter2++))
				;;
				3 )
					((counter3++))
				;;
				4 )
					((counter4++))
				;;
				5 )
					((counter5++))
				;;
				6 )
					((counter6++))
				;;
				*)
					echo "error, check code!"
				;;
	esac


	if [[ $counter1 -eq 10 || $counter2 -eq 10 || $counter3 -eq 10 || $counter4 -eq 10 || $counter5 -eq 10 || $counter6 -eq 10 ]]
	then
		switch=0
	fi

done

echo "Dictionary values: " ${diceRoll[@]}
echo "Dictionary keys: " ${!diceRoll[@]}


counterArray=($counter1 $counter2 $counter3 $counter4 $counter5 $counter6)

max=${counterArray[0]}
min=${counterArray[0]}

for i in "${counterArray[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi

	if [ $i -lt $min ]
	then
		min=$i
	fi
done

case $max in
		$counter1 )
				echo "number that reached maximum times: 1"
		;;
		$counter2 )
				echo "number that reached maximum times: 2"
		;;
		$counter3 )
				echo "number that reached maximum times: 3"
		;;
		$counter4 )
				echo "number that reached maximum times: 4"
		;;
		$counter5 )
				echo "number that reached maximum times: 5"
		;;
		$counter6 )
				echo "number that reached maximum times: 6"
		;;
		*)
				echo "error, check code!"
		;;
esac

echo "number of times it occured: " $max


case $min in
		$counter1 )
				echo "number that reached minimum times: 1"
		;;
		$counter2 )
				echo "number that reached minimum times: 2"
		;;
		$counter3 )
				echo "number that reached minimum times: 3"
		;;
		$counter4 )
				echo "number that reached minimum times: 4"
		;;
		$counter5 )
				echo "number that reached minimum times: 5"
		;;
		$counter6 )
				echo "number that reached minimum times: 6"
		;;
		*)
				echo "error, check code!"
		;;
esac

echo "number of times it occured: " $min
