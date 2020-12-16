echo "Welcome to the user regitrstion program"
read -p "enter a valid mobilenumber:" mobilenumber
mobilenumberRegex="[0-9]{2}[ ]?[0-9]{10}$"
if [[ $mobilenumber =~ $mobilenumberRegex ]]
then
      echo "$mobilenumber is a valid number"
else
     echo "invalid mobilenumber"
fi
