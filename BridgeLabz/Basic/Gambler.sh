read -p "Enter number of bets : " n
read -p "Enter stake value   : " stake
read -p "Enter Goal : " goal
declare -i win=0
declare -i loss=0
declare -i bet=0
declare
while(( $n>0 && $win<$goal && $stake !=0 ))
do
	rnd=$(( 1 + RANDOM%10 ))
	if(( $rnd>=5 ))
	then
	     win=$(( $win + 1 ))
	     stake=$(( $stake -1))
             n=$(( $n - 1 ))
             bet=$(( $bet + 1 ))
	    
	else
	    loss=$(( $loss + 1 ))
            stake=$(( $stake -1))
            n=$(( $n - 1 ))
            bet=$(( $bet + 1 ))
	    
	fi
 
 
done
echo "Number of times won : "$win
echo "Number of times loss : "$loss
echo "Total bets done : "$bet
