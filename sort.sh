#!/bin/bash

read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter 3rd number " c

declare -A expression

expression[a+b*c]=$(($a+$b*$c))
expression[a*b+c]=$(($a*$b+$c))
expression[c+a/b]=$(($c+$a/$b))
expression[a%b+c]=$(($a%$b+$c))

echo "dictionary is "
for key in ${!expression[@]}
do
        echo "$key = ${expression[$key]}"
done
echo "array is "
i=0
for key in ${!expression[@]}
do
	arr[$i]=${expression[$key]}
	i=$(($i+1))
done

echo ${arr[@]}

for((i=0;i<4;i++))
do
	for((j=$(($i+1));j<4;j++))
	do
		if [ ${arr[$i]} -lt ${arr[$j]} ]
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "descending "${arr[@]}

for((i=0;i<4;i++))
do
        for((j=$(($i+1));j<4;j++))
        do
                if [ ${arr[$i]} -gt ${arr[$j]} ]
                then
                        temp=${arr[$j]}
                        arr[$j]=${arr[$i]}
                        arr[$i]=$temp
                fi
        done
done
echo "ascending "${arr[@]}

