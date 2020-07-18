#!/bin/bash
declare -A coin
singlet=(H T)
for key in ${singlet[@]}
do
        coin[$key]=0
done

for((i=0;i<10;i++))
do
        x=$((RANDOM%2))
        coin[${singlet[$x]}]=$((${coin[${singlet[$x]}]}+1))
done

#since i am running the loop for 10 times so percentage is calculated by val*10
echo "Percentage of Heads" $((${coin[H]}*10))
echo "Percentage of Tails" $((${coin[T]}*10))
