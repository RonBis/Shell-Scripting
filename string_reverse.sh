if [ $# == 0 ]; then
    exit
fi

len=`echo $@ | wc -c`
len=`expr $len - 1`

strrev=""
while test $len -gt 0; do
    strrev1=`echo $* | cut -c $len`
    strrev=$strrev$strrev1
    len=`expr $len - 1`
done

echo "Reversed string = $strrev"
