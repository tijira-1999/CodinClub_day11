#!/bin/bash
declare -A coin
singlet=(H T)
doublet=(HH TT HT TH)
triplet=(HHH HHT HTT TTT TTH THH THT HTH)
for key in ${singlet[@]}
do
        coin[$key]=0
done
for key in ${doublet[@]}
do
        coin[$key]=0
done
for key in ${triplet[@]}
do
        coin[$key]=0
done

#for singlet
for((i=0;i<100;i++))
do
        x=$((RANDOM%2))
        coin[${singlet[$x]}]=$((${coin[${singlet[$x]}]}+1))
done
#for doublet
for((i=0;i<100;i++))
do
        x=$((RANDOM%4))
        coin[${doublet[$x]}]=$((${coin[${doublet[$x]}]}+1))
done
#for triplet
for((i=0;i<100;i++))
do
        x=$((RANDOM%8))
        coin[${triplet[$x]}]=$((${coin[${triplet[$x]}]}+1))
done
#since i am running the loop for 100 times so percentage is calculated by value itself
echo "SINGLET"
echo "Percentage of H" ${coin[H]}
echo "Percentage of T" ${coin[T]}

echo "DOUBLET"
echo "Percentage of HH" ${coin[HH]}
echo "Percentage of TT" ${coin[TT]}
echo "Percentage of HT" ${coin[HT]}
echo "Percentage of TH" ${coin[TH]}

echo "TRIPLET"
echo "Percentage of HHH" ${coin[HHH]}
echo "Percentage of HHT" ${coin[HHT]}
echo "Percentage of HTT" ${coin[HTT]}
echo "Percentage of TTT" ${coin[TTT]}
echo "Percentage of TTH" ${coin[TTH]}
echo "Percentage of THH" ${coin[THH]}
echo "Percentage of THT" ${coin[THT]}
echo "Percentage of HTH" ${coin[HTH]}

