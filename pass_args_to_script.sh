#! /bin/bash

# All work
# echo "$(basename "$BASH_SOURCE")"
# echo `basename $BASH_SOURCE`
# echo "$BASH_SOURCE"

# args
# echo "$1"

# pasre args as an array
args=("$@")
echo "${args[0]}"                   # to get one and first arg
echo "$args"                            # this will give first agr only
echo "${args}"                        # this will give first agr only
echo "${args[*]}"                   # this woll give you all args
echo "$@"                               #   this will also give us all args passed

# to get the number of args.:-  This is by default saved in param '#'
echo "$#"