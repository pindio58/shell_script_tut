#! /bin/bash

# echo "Enter your name: "

# read  -r name                                           # read without -r will mangle backslashes
# echo "Your name is $name?"


: '
For multiple words
'
# echo "Enter the names: "

# read -r name1 name2 name3
# echo "entered names are--> $name1, $name2, $name3"


: 'For printing popup message on same line'

# read -r -p  'Enter your name: ' name
# echo "Entered name is $name"


: 'For hidden inputs. For e.g. passwords'
# flag is -s 

# read -r -sp "Password: " pass
# printf '\nentered password is: %s\n' "$pass"                # printf handles expansion, echo doesnot


: 'To save in array'
# read -ra names
# echo "Names are: ${names[0]}"     # used indexing here
# echo "Names are: ${names[*]}"   # expand all array

: 'If we do not pass any parameter to read, By default it will be stored into variable REPLY'
read -r
echo "Entered input is: $REPLY"              # IMP capital letters
