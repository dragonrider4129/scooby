#!/bin/bash
function palindrome ()
{
rev=0
n=$num
while [ $num -ne 0 ]
do
	let dig=num%10
	let rev=rev*10+dig
	let num=num/10
done
if [ $n -eq $rev ]
then
		echo "the number $n is a palindrome"
else
		echo "the number $n is not a palindrome"
fi
}
for (( i=1; i<=1; i++ ))
do
	read -p "enter a num : " num
	palindrome $num
done

