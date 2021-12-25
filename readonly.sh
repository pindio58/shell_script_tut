#! /bin/bash

# var=31
# readonly var
# var=33
# echo "$var"

print(){
    echo "print one"
}

# for make functions readonly , use flag f
readonly -f print  

print(){
    echo "print two"
}

print