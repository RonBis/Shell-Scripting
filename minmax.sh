#a=("Chemistry" "Zoology" "Botany" "Psychology")
#echo ${a[@]}
#echo "Size : " ${#a[@]}
#echo ${a[1]:0:3} ${a[3]:3:5}

i=0
read -p "No. of elements : " n
while [ $i -lt $n ]
do
	read a[$i]
	i=`expr $i + 1`
done

echo ${a[@]}

min=${a[0]}
max=${a[0]}

for i in ${a[@]}
do
	if [ $i -lt $min ];then
		min=$i
	fi
	if [ $i -gt $max ];then
		max=$i
	fi
done

echo "min = " $min
echo "max = " $max

