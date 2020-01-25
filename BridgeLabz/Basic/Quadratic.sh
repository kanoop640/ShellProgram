read -p "Enter the value of a, b and c" a b c
delta=$(( (($b*$b)) - (( 4*$a*$c )) ))
if(( $delta > 0))
then
    root1=$(echo "$b" "$delta" "$a" |awk '{print (-$1 + sqrt($2))/2*$3}')
    root2=$(echo "$b" "$delta" "$a" |awk '{print (-$1 - sqrt($2))/2*$3}')
    echo "First root is : "$root1
    echo "Second root is : "$root2
    
else
	echo "Number is Imaginary "
fi
