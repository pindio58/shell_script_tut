#! /bin/bash

# # input is a string,  e.g "2,4,2,6,2,8"
# # output is s string, e.g "6 12 4 12 3 12"

# declare -a array2
# convert () {
#     IFS=','  read -ra array <<< "$1"
#     len="${#array[@]}"
#     start=1
#     k=0
    
#     while [ "$start" -lt "$len" ] 
#     do 
#         echo "${array[start]}"
#         array2[k]="${array[start]}"
#         start=$(( start+2 ))
#         k=$(( k+1 ))
#     done
# }

# def find_gcd(x, y):
	
# 	while(y):
# 		x, y = y, x % y
	
# 	return x
		
# # Driver Code	
# l = [4, 6, 8]

# num1 = l[0]
# num2 = l[1]
# gcd = find_gcd(num1, num2)

# for i in range(2, len(l)):
# 	gcd = find_gcd(gcd, l[i])
	
# print(gcd)


function gcd() (
    ! (( $1 % $2 )) && echo "$2" || gcd "$2" $(( $1 % $2 ))
)

gc=$(gcd 4 6)

echo "$gc"








# convert "$1"
# echo "${array2[@]}"