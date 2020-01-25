read -p "Enter the value of row " m
read -p "Enter the value of coloum" n
declare -A arr[$m,$n]
for ((i=0;i<$m;i++ ))
{
	for (( j=0;j<$n;j++))
       {
	read arr[$i,$j]
       }
}
echo Entered Numbers is 
for ((i=0;i<$m;i++ ))
{
	for (( j=0;j<$n;j++))
       {
	echo ${arr[$i,$j]}
       }
}
