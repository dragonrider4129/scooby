#!/bin/bash -x
declare -A dice

for ((i=0;i<6;i++))
do 
dice[$i]=0
done
echo ${dice[@]}

for ((j=1;j<=20;j++))
do
randomvar=$((Random%6+1))
(( Dice[$randomvar]++ ))
done
echo ${Dice[@]}

