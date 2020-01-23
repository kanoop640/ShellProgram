echo Enter name :
read name
echo Entered name is : $name

read -p "username :" user_var
echo "username is :" $user_var

read -sp "Password :" pass_var
echo
echo Password is : $pass_var


echo "Enter multiple name"
read -a names
echo "Names is :"${names[0]}, ${names[1]}

echo Enter Company name :
read
echo Company is : $REPLY
