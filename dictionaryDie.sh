#!/bin/bash
declare -A Die
#fix=1
count=0
counter=0
#while [ $fix -lt 10 ]
for (( fix=1; fix<=100; fix++ ))
do
	Die[$count]=$x
	x=$(( 1+RANDOM%6 ))
	count=$(( $count+1 ))
#	if [ $count -eq $fix ]
#	then
#	echo ${Die[$count]} " " $x
#	fi
done
echo "${Die[@]}"
echo "${!Die[@]}"
length=${#Die[@]}
echo $length

#i=${!Die[@]}
#for i in ${!Die[@]}
#do
#	if [ ${Die[$i]} -eq ${!Die[$i++]} ]
#	then
#		echo ${Die[$i]}
#	fi

#for i in ${Die[@]}
#do
#	echo $i ${Die[$i]}
	for (( i=1; i<$length-1; i++ ))
	do
		for (( j=$i+1; j<$length; j++ ))
		do
			if [ ${Die[$i]} -eq ${Die[$j]} ]
		  	then
				num=${Die[$i]}
#				counter=$(( $counter+1 ))
				echo $num
	  		fi
		done

	done
#done
