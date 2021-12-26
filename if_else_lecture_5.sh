#! /bin/bash

#Syntax
: '
if [ condition ] then                       we need to pass the condition in square brackets with space at th begin and end 
    code
else
    code
end if / fi
'

# Operaotors
# https://www.tutorialspoint.com/unix/unix-basic-operators.htm


# Integer comparison
# Symbol                      means                           Syntax
# -eq                             equal to                        [ "$a" -eq "$b" ]
# -ne
# -gt
# -ge
# -lt
# -le
# <                                 less than                      (( "$a" < "$b"))
# >
# >=
# <=


# String comparison
# Symbol                      means                           Syntax
# =                                                                    single sq brakcet
# ==                                                                  single sq brakcet
# <                                                                    double sq brakcet
# >                                                                    double sq brakcet
: '!=                                                                   single sq brakcet'
# -z                                string is null


: 'IMP '
# https://stackoverflow.com/questions/229551/how-to-check-if-a-string-contains-a-substring-in-bash/229585#229585


# Program starts

count=6

if [ "$count" -lt 10 ] 
    then
        echo "True"
    else 
        echo "False"
fi

# second way
if (("$count" <= 10))  
    then
        echo "True"
    else 
        echo "False"
fi

# for strings

one='One'
two='Two'

if [ "$one" == "$two" ]
    then
        echo "Yes!!!!"
    else
        echo "Oh, No!!"
fi