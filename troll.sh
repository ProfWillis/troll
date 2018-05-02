echo "What is your name?"
read vname
echo "Hello $vname!"
echo " "
echo "How many apples do you have?"
read a
echo "How many oranges do you have?"
read o
vala=`expr $a \* 3`
valo=`expr $o \* 2`
trueval=`expr $vala + $valo`
echo "$trueval,$vname" > user.dat
echo "You have  $trueval dollars worth of fruit."
echo " "
echo "Would you like to see my wares, $vname?"
echo "{type 1 for yes, 2 for no)"
read sell
yes=1
if [ $sell == $yes ] 
then
	echo "I have these wares..."
	echo " "
	cat inventory.dat | tail -n +1 | cut -d , -f 2 
	echo " "
	echo "Please type the number of the item you would like to purchase."
	bash shopping.sh
else
	echo "Get the hell out of my store."
fi
#while [ $a -lt 100 ]
#do
#   echo "I have $a apples"
#   a=`expr $a + 1`
#done
