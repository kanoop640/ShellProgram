read -p "Enter required coupons " n
c=""
s=,
for(( i=0; i<$n; i++ ))
{
	rnd=$(( RANDOM ))
	if [[ $c != *"$rnd"* ]]
	then
	        c=$c$rnd$s
	else
		i=$(( i - 1 ))
	fi
}
echo $c
