#! /bin/bash -x

j=1
powerofTwo=1
for((i=20;i<=30;i++))
do
	if(($i%2==0))
	then
		#echo $i
		number[$j]=$i
		j=$(($j+1))
	fi
done
echo "List of even numbers from 20 to 30 in the array: " "${number[*]}"

lengthArray=${#number[*]}
echo "Length of the array is: " "$lengthArray"

let powerofTwo=(2 ** $lengthArray)
echo "Power of 2 using the length of the array: $powerofTwo"

