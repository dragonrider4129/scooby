echo "Welcome to the user regitrstion program"
read -p "enter atleat 8 characters password:" password
passwordRegex="^[0-9a-zA-Z]{8,}$"
if [[ $characters =~ $PasswordRegex ]]
then
      echo "password sucessfully created"
else
     echo "invalid password"
fi
