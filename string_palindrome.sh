read -p "Enter string: " str
strrev=`echo $str|rev`
if [ "$str" == "$strrev" ]; then
  echo "palindrome"
else
  echo "not a palindrome"
fi
