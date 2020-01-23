
read -p "Enter number :" num1
if [ $num1 == "abc" ]
then
  echo True
else 
  echo False
fi
length=${#num1}
if [ ${#num1} -ge 3 ]
then
 echo "true"
else
 echo "false"
fi
