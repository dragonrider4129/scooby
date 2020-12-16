#!/bin/bash -x
echo "Welcome to the user regitrstion program"
read -p "enter your first name: " firstname
firstnameRegex="^[A-Z]{1}[a-z]{1,}$"
if [[ $firstname =~ $firstnameRegex ]]
then
      echo "$firstname is a valid name"
else
     echo "invalid name"
fi
