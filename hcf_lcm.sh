read -p "Enter first number: " n1
read -p "Enter second number: " n2

# lcm
if [ $n1 -gt $n2 ]; then
	max=$n1
else
	max=$n2
fi

while :
do
	if [[ `expr $max % $n1` -eq 0 && `expr $max % $n2` -eq 0 ]]; then
		break
	fi
	max=`expr $max + 1`
done
echo "lcm = $max"

# hcf
while [ $n1 -ne $n2 ]
do
	if [ $n1 -gt $n2 ]; then
		n1=`expr $n1 - $n2`
	else
		n2=`expr $n2 - $n1`
	fi
done
echo "hcf = $n1"

