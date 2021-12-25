#! /bin/bash

# same as AND operator
age=18

if [ "$age" -eq 18 ] || [ "$age" -eq 30 ]
    then
        echo "Youngster. Get inside."
    else
        echo "Not eligible"
fi