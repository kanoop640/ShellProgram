#! /bin/bash -x
read -p "Enter year " YEAR
declare -i a=4
declare -i b=400
declare -i true=$year%$a
declare -i true1=$year%$b 
 if [ $YEAR % 4 -eq 0 ]
 then 
	echo false
 else
	echo true
 fi
