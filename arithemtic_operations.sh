#! /bin/bash

num1=25
num2=26

# echo $((num1+num2))
# echo $((num1>num2))
# echo $((num1<num2))
# echo $((num1-num2))
# echo $((num1*num2))
# echo $((num1/num2))
# echo $((num1%num2))

# alternate ways -->  Using expr command
# just difference is single brackets

echo $(expr "$num1" + "$num2" )   # space is important

echo $(expr "$num1" \* "$num2" )   # escape character for multiplication (*)