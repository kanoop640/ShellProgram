declare -i Head=0
declare -i Tail=0
declare -i add=1
read -p "Enter the value of n" n

for((i=0;i<n;i++)){
rnd=$((1 + RANDOM%10))
echo $rnd
 if [ $rnd -gt 5 ]
 then
	Head=$Head+$add
 else
	Tail=$Tail+$add
 fi
}
echo "Head is : " $Head
echo "Tail is : " $Tail
