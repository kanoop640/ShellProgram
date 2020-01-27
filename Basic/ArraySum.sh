declare -A arr[9]
for(( i=0; i<9; i++ ))
{
	arr[$i]=$i
}
s=$(( ${arr[0]} + ${arr[4]} + ${arr[2]} ))
echo $s
