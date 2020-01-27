day=$( date +%w )
#echo $day
case $day in
	1)
	   echo "Monday" ;;
	2)
	echo "Tuesday" ;;
	3)
	echo "Wedneday";;
	4)
	echo "Thursday";;
	5)
	echo "Friday";;
	6)
	echo "Saturday";;
	*)
	   echo "NOt Valid" ;;
esac
