echo "Welcome to the user regitrstion program "
read -p "enter a valid emailid:" emailid
emailidRegex="^[a-zA-Z0-9\-\+\.]*.([a-zA-Z0-9])?@([a-z0-9]*.[a-z]{2,4}.([a-z]{2,})?)$"
if [[ $emailid =~ $emailidRegex ]]
then
      echo "$emailid is a valid name"
else
     echo "invalid emailId"
fi
