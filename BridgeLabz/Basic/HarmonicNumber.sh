read -p "Enter the value of n" n
declare -i sum 
for((  i=1; i<=$n; i++ ))
{
a=$(echo "$i" "$a" |awk '{print $2 + (1/$1)}')
}
echo ${a}
