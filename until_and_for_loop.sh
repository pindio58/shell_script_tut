#! /bin/bash

# until is basically while not
num=1
until (( "$num" > 3 ))
    do
        # echo "$num"
        (( num++ ))
    done

# For loop
# Multiple ways

# First

# for var in 1 2 3 4 5 6
#     do
#         echo "$var"
#     done

# # for longer range
# for var in {1..10}
#     do
#         echo "$var"
#     done

# another way
# for  (( var=1 ; var<=5 ; var++ ))
#     do
#         echo "$var"
#     done


# -========================================================================

# for command in pwd date
#     do
#         echo "Command is: $command"
#         "$command"
#     done


for item in *
    do
        if [ -f "$item" ]
            then
                echo "$item"
        fi
    done