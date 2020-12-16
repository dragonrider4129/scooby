echo "Welcome to the user regitrstion program"
read -p "enter a valid password:" password
passwordRegex="(?=.{8,}$)(?=.*\d)(?=.*[A-Z])[a-z0-9A-Z]*[\@\#\^]"
if [[ $password =~ $passwordRegex ]]
then
      echo "$Password is a valid password"
else
     echo "invalid password"
fi
