read -p "Enter the size of array " n
declare -A arr[$n]
for(( i=0;i<$n;i++ ))
{
	read  arr[$i]
}
for(( i=0;i<$n-2;i++ ))
{
	for(( j=i+1;j<$n-1;j++ ))
	{
		for(( k=j+1;k<$n;k++ ))
		{
			sum=$(( arr[$i] + arr[$j] + arr[$k] ))
			if(( $sum==0))
			then
				echo ${arr[$i]} ${arr[$j]} ${arr[$k]}
			fi
		}
	}
}
