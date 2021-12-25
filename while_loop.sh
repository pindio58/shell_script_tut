#! /bin/bash

: '
Syntax:
while [ condition ]
    do
        statements
    done
'
num=1

while [ "$num" -le 3 ]
    do
        echo "$num"
        # num=$(( num+1 ))
        # sleep 0.5                                                 # sleep for 0.5 sec
        (( num++ ))
        # (( num+1 ))                                                 # simply ding this, does not assign
        # gnome-terminal &                                  # will open the terminal
    done


# read a file
# while read -r name
#     do
#         echo "$name"
#     done < testPermanent.txt

# # Second way
# cat testPermanent.txt | while read -r name
#     do
#         # echo "$name"
#         echo ""
#     done

# to avoid problem of special chars, we will use IFS
# while IFS=' ' read -r name
#     do
#         echo "$name"
#     done < testPermanent.txt


# my own testing
# while IFS=' ' read -r name
#     do
#         echo "$name"
#     done << EOF
# $(ls -l)
# EOF