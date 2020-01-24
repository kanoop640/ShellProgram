read -p "Enter Year : " year
if [ $year -gt 999 ]
then
 if (( $year%400==0 || $year%4==0 && $year%100 != 0 ))
 then
	echo "$year It is a Leap Year"
 else
	echo "$year Not a Leap Year"
 fi
else
	echo "Number digit is less than 3 or equal to 3"
fi
