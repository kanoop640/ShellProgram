let start_time="$( date +%s)";
echo "Welcome to my timer "
while [ 1 ]
do
	let current_time=$( date + %s)
	let second=$start_time - $current_time;
	echo -ne "\r Time :  $second"
	sleep 1;
done
