string="Anoop is nice guy"
#read -a $string arr
length=${#string}
for((i=0;i<$length;i++))
	if [[ $string[i] == "i" ]]
	 then
		echo $string[i]

