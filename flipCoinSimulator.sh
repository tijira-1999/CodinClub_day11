#!/bin/bash
head=1
declare -A coin
coin[head]=0
coin[tail]=0
while [ ${coin[head]} -ne 21 -a ${coin[tail]} -ne 21 ]
do
	x=$((RANDOM%2))
	if [ $x -eq 1 ]
	then
		coin[head]=$((${coin[head]}+1))
	else
		coin[tail]=$((${coin[tail]}+1))
	fi
done
if [ ${coin[head]} -gt ${coin[tail]} ]
then
	echo "head wins by " $((${coin[head]}-${coin[tail]}))
elif [ ${coin[head]} -eq ${coin[tail]} ]
then
	while [ $((${coin[head]}-${coin[tail]})) -eq 2 ] || [ $((${coin[tail]}-${coin[head]})) -eq 2 ]
	do
		x=$((RANDOM%2))
	        if [ $x -eq 1 ]
	        then
        	        coin[head]=$((${coin[head]}+1))
	        else
                	coin[tail]=$((${coin[tail]}+1))
        	fi
	
	done
else
	echo "tail wins by " $((${coin[tail]}-${coin[head]}))
fi
echo "head " ${coin[head]}
echo "tail " ${coin[tail]}
