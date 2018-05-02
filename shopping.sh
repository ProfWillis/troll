read itemnumber
usermoney="$(cat user.dat | cut -d , -f 1)"
cat inventory.dat | tail -n +3 > itemsworking.dat
cat itemsworking.dat | head -$itemnumber | tail -1 > itemofinterest.dat
name="$(cat itemofinterest.dat | cut -d , -f 2)"
price="$(cat itemofinterest.dat | cut -d , -f 3)"
quantity="$(cat itemofinterest.dat | cut -d , -f 4)"
echo "Oh that? That $name costs $price. I have $quantity of them."
echo " "
echo "How many would you like to buy?"
read purchase
cost=`expr $purchase \* $price`
usermoneynew=`expr $usermoney - $price`
echo "You now have $usermoneynew dollars."