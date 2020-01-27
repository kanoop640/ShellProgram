declare -A arr[9]
for(( i=0; i<9; i++ ))
{
	arr[$i]=0
}
echo ${arr[2]}
read -p "Enter player " player
n=9
print()
{
	echo ${arr[0]} "|" ${arr[1]} "|" ${arr[2]} 
	echo ${arr[3]} "|" ${arr[4]} "|" ${arr[5]} 
	echo ${arr[6]} "|" ${arr[7]} "|" ${arr[8]}
}
isWon()
{
	p1=$(( ${arr[0]} + ${arr[1]} + ${arr[2]} ))
	p2=$(( ${arr[3]} + ${arr[4]} + ${arr[5]} ))
	p3=$(( ${arr[6]} + ${arr[7]} + ${arr[8]} ))
	p4=$(( ${arr[0]} + ${arr[4]} + ${arr[8]} ))
	p5=$(( ${arr[6]} + ${arr[4]} + ${arr[2]} ))
	p6=$(( ${arr[0]} + ${arr[3]} + ${arr[6]} ))

	#m1=$(( ${arr[0]} + ${arr[1]} + ${arr[2]} ))
	#m2=$(( ${arr[3]} + ${arr[4]} + ${arr[5]} ))
	#m3=$(( ${arr[6]} + ${arr[7]} + ${arr[8]} ))
	#m4=$(( ${arr[0]} + ${arr[4]} + ${arr[8]} ))
	#m5=$(( ${arr[6]} + ${arr[4]} + ${arr[2]} ))

	if(( $p1 == 3 || $p2 == 3 || $p3 == 3 || $p4 == 3 || $p5 == 3 || $p6 == 3 ))
	then
	echo "Player 1 is won "
	exit
	elif(( $p1 == -3 || $p2 == -3 || $p3 == -3 || $p4 == -3 || $p5 == -3 || $p6 == -3 ))
	then
	echo "Machine won "
	exit
	else
	echo "continue "
	fi
}

while [[ $player == 1 || $player == 2 && $n > 0  ]]
do
	if(( $player==1 ))
	then
 	read -p "Enter place to input between 0 to 8 " i
	clear
		if(( ${arr[$i]} == 0 ))
		then
		arr[$i]=1
		n=$(( n - 1 ))
		player=2
		print
		else
		echo "place is occupied "
		player=1
		fi
	elif(( $player==2 ))
	then
		rnd=$(( RANDOM%9 ))
		if(( ${arr[$rnd]}==0 ))
		then
		arr[$rnd]=-1
		n=$(( n - 1 ))
		player=1
		print
		else
		echo "place is occupied "
		player=2
		fi
	else
		echo "Wrong Input "
	fi
isWon
done
		
		