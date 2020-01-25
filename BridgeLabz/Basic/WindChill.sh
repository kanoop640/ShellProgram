read -p "Enter the value of t and v" t v
w=$(echo "35.74" "0.6215" "0.4275" "$t" "$v" "35.75" "0.16" |awk '{print ($1 + $2*$4 + ( $3*$4 - $6 )*( $5**$7 ))}')
if(( $t<50 && $v<120 && $v>3 ))
then
	echo "The value is absolute : "$w
else
	echo "The value is within range : "$w
fi