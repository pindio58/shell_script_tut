#! /bin/bash

function hello() {
    echo "hello peeps"
}

quit(){
    exit
}

# calling them

# hello
# quit

# to pass the arguments

function print(){
    k="$1"
    (( k++ ))
    echo "$k"
}

for i in {1..6}
    do
        print "$i"
    done