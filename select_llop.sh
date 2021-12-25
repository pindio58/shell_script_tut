#! /bin/bash

# it is similar to for loop but it gives us menu type things

# select name in tommy shelby john arthur
#     do
#         echo "$name is a good guy"
#     done



select name in tommy poly john arthur
    do
        case "$name" in
            tommy ) 
                echo "$name is the main character" ;;
            'arthur' )
                echo "$name is the his brother" ;;
            'john' )
                echo "$name is the his brother" ;;
            * )
                echo "$name must be his aunt" ;;
        esac
    done