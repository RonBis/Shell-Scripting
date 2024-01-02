sum() {
	echo `expr $1 + $2`
}
sub() {
	r=`expr $1 - $2`
	echo $r
}
mul() {
	echo `expr $1 \* $2`
}
div() {
	echo "scale=2;( $1 / $2 )" | bc
}

sum=0
i="y"
read -p "Enter first number: " n1
read -p "Enter second number: " n2

while [ $i = "y" ]
do
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	
	read -p "Enter your choice: " ch
	case $ch in
		1)
			sum $n1 $n2;;
		2)
			sub $n1 $n2;;
		3)
			mul $n1 $n2;;
		4)
			div $n1 $n2;;
		*)
			echo "Invalid choice";;
	esac
	
	echo "Do u want to continue ?"
	read i
	if [ $i != "y" ];then
		exit
	fi
done
