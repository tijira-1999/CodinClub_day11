#!/bin/bash
singlet=(H T)
for((i=0;i<10;i++))
do
	x=$((RANDOM%2))
	echo ${singlet[$x]}
done
echo ${coin[@]}
