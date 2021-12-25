#! /bin/bash

os=( 'windows' 'linux' 'mac' )

echo "${os[*]}"                                 # gives all elements of an array
echo "${os[@]}"                                # gives all elements of an array
echo "${os[1]}"                                 # gives the first element of an array 
echo "${!os[@]}"                             # gives trhe indices
echo "${#os[@]}"                            # number of elements of te array

# to set the value
os[4]='mac'
echo "${os[@]}"

# unsetting
unset "os[2]"
echo "${os[@]}"
echo "${!os[@]}"   


# to change string into array
str='Kiwe a mitra'
# arr=($str)
IFS=' ' 
read -ra arr <<< "$str"
echo "${arr[0]}"   
