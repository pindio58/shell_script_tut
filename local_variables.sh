#! /bin/bash

# unlike python, namespace here is always global unless specified local

#  ==========================================================================
# function name(){
#     name=$1
#     echo "$name"
# }

# function names(){
#     local name=$1
#     echo "$name"
# }


# name=Max
# echo "The name before function is: $name"
# name jeet
# echo "The name after function (without specifying local) is: $name"
# names jyte
# echo "The name after function (with  specifying local) is: $name"
#  ==========================================================================

usage(){
    echo "you need to provide some filename"
    echo "Usage: ${BASH_SOURCE[0]} <filename>"
}

file_exists(){
    name="$1"
    [[ -f "$name" ]] && return 0 || return 1
}

# check the number of args
[[ $# -eq 0 ]]  && usage

# call function to check file
if ( file_exists "$1")
    then
        echo "File(s) found: $1"
    else 
        echo "No such file"
fi