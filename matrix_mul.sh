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
    for (( j=0;j<q;n++ )); do
        read a[$i$j]
    done
done

echo "Enter elements of matrix A"
for (( i=0;i<m;i++ )); do
    for (( j=0;j<q;n++ )); do
        read a[$i$j]
    done
done

# matrix 1
for (( i=0;i<m;i++ )); do
    for (( j=0;j<q;n++ )); do
        echo a[$i$j]
    done
    echo "\n"
done

fi