echo Enter the value of  n
read n
declare -i Head=0
declare -i Tail=0
add=1
for((i=0;i<$n;i++))
{
     rnd=$(( 1 + RANDOM%10 ))
     if [ $rnd -gt 5 ]
     then
            Head=$Head+$add
     else
            Tail=$Tail+$add
     fi
}
echo "Head is occure : " $Head
echo "Tail is occure : " $Tail
