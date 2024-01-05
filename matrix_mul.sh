# echo -n; "-n" flag is used to remove the implicit newline after echo
echo -n "Number of rows for matrix A: "
read m
echo -n "Number of columns for matrix A: "
read n
echo -n "Number of rows for matrix B: "
read p
echo -n "Number of columns for matrix B: "
read q



if [ $n -ne $p ]; then # checking compatibility of the two matrices for multiplication
	echo "Wrong input! Multiplication is not possible"
else
	echo "Enter elements of matrix A"
	for (( i=0;i<m;i++ )); do
    	for (( j=0;j<n;j++ )); do
        	read a[$i$j]
    	done
	done

	echo "Enter elements of matrix B"
	for (( i=0;i<p;i++ )); do
	    for (( j=0;j<q;j++ )); do
	        read b[$i$j]
	    done
	done

	# matrix 1
	echo "Matrix A"
	for (( i=0;i<m;i++ )); do
    	for (( j=0;j<n;j++ )); do
    	    echo -n "${a[$i$j]}  "
    	done
    	echo
	done

	# matrix 2
	echo "Matrix B"
	for (( i=0;i<p;i++ )); do
    	for (( j=0;j<q;j++ )); do
    	    echo -n "${b[$i$j]}  "
    	done
    	echo
	done

	for (( i=0;i<m;i++ )); do
		for (( j=0;j<q;j++ )); do
			mul[$i$j]=0
			for (( k=0;k<p;k++ )); do
				mul[$i$j]=`expr ${mul[$i$j]} + ${a[$i$k]} \* ${b[$k$j]}`
			done
		done
	done

	# output matrix
	echo "Product matrix"
	for (( i=0;i<m;i++ )); do
    	for (( j=0;j<q;j++ )); do
    	    echo -n "${mul[$i$j]}  "
    	done
    	echo
	done

fi