i=0
read -p "No. of elements : " n
while [ $i -lt $n ]
do
	read a[$i]
	i=`expr $i + 1`
done

echo ${a[@]}

read -p "Search string : " str

fag=0
for i in "${a[@]}"
do
	if [[ $i == $str ]];then
		fag=1
		break
	fi
done

if [ $fag -eq 1 ];then
	echo "found"
else
	echo "not found"
fi

