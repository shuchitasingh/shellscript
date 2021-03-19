
echo "welcome"
spresent=1
randomcheck=$((RANDOM%2))
if [[ $ispresent -eq $randomcheck ]]
then
echo "employee present"
else
echo "employee absent"
fi
