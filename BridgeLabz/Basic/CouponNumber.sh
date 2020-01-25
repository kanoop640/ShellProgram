read -p "Enter required coupons " n
c=""
s=,
for(( i=0; i<$n; i++ ))
{
	rnd=$(( RANDOM%10 ))
	if [[ $c != *"$rnd"* ]]
	then
	        c=$c$rnd$s
	else
		i=$(( i - 1 ))
	fi
}
echo $c
