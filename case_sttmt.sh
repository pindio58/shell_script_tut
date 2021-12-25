#! /bin/bash

#Syntax:
: '
case expression in 
    pattern1 )
        statements ;;
    pattern2 )
        statements ;;
esac
'

# Example 1

# vehicle="$1"
# case "$vehicle" in
#     *car* )
#         echo "This is car!" ;;
#     "van" )
#         echo "This is Van!" ;;
#     "truck" )
#         echo "This is truck?" ;;
#     * )                                                                     # default
#         echo "This is Unknown"
# esac

# Example 2


echo -e "Please enter your inpurt: \c"
read -r userinput

case "$userinput" in
    [a-z] )
        echo "User gave the lowercase value" ;;
    [A-Z] )
        echo "User gave the uppercase value" ;;
    [0-9] )
        echo "User gave the interger value" ;;
    ? )
        echo "User gave the single character value" ;;
    * )
        echo "User gave some Unknown value" ;;
esac


