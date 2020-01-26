start_time=$( date +%s);
echo "Welcome to my timer "
while [ 1 ]
do
	current_time=$( date +%s );
	let second=$(( $current_time - $start_time ));
	echo -ne "\r Time :  $second"
done
