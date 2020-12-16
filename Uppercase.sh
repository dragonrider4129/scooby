echo "Welcome to the user regitrstion program"
read -p "enter atleat 8 characters password:" password
passwordRegex="^[0-9a-zA-Z{1,}]{8,}$"
if [[ $characters =~ $PasswordRegex ]]
then
      echo "$Password is updated"
else
     echo "invalid password"
fi
