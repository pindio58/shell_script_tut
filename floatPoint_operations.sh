#! /bin/bash

# by deafault, last two methds do not supoer float operations -->  (()) and expr
num1=2.5
num2=9.8
# echo $(("$num1"+"$num2"))     # Gives error here

# There are many tools to handle this. One of them is:

# bc
# check its man page
# echo "$num1" + "$num2" | bc
# it does not give correct value for division
# echo "$num2" / "$num1" | bc
    # resoution

# finding square root
num3=26
echo "scale =2 ; sqrt($num3)" | bc -l                           # l means calling in built library math

echo "scale=2; $num1+$num2" | bc


echo "3^3"|bc 