
read -p "Enter the value of n" n
for(( i=2; i<$n; i++))
{ 
	c=0
	if(( $n%$i==0 ))
	then
		for(( j=2;j<$i;j++))
               {
		if(( $i%$j==0 && j < i))
		then
	        	c=1
		fi
              }
	      			if(( c==0 ))
				then
					echo $i
				fi
	fi
}
