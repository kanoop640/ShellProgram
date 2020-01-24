read -p "Enter the value of n" n
declare -i input=2
for((i=1;i<=$n;i++))
{
declare -i res=$input*$i
 echo $res
}
