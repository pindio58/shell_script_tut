#! /bin/bash

for (( i=1; i<=10;i++ ))
    do
        # echo "$i"
        if (( "$i"==5 ))
            then
                break
        fi
    done

for (( i=1; i<=10;i++ ))
    do
        # if (( "$i" >3 )) && (( "$i" <6 ))
        if [[ "$i" -gt 3  &&  "$i" -lt 6 ]]
            then
                continue
        fi
        echo "$i"
    done