#! /bin/bash

# There are three different ways


age=25

            # first one

# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
#     then
#         echo "Youngster. Get inside."
#     else
#         echo "Not eligible"
# fi

            # Second one

# if [[ "$age" -gt 18  &&  "$age" -lt 30 ]]                             #there are double sq brackets
#     then
#         echo "Youngster. Get inside."
#     else
#         echo "Not eligible"
# fi


        # Third one

# if [ "$age" -gt 18  -a  "$age" -lt 30 ]
#     then
#         echo "Youngster. Get inside."
#     else
#         echo "Not eligible"
# fi



# We  can try with run brackts also
age=67
if (( "$age" > 18)) &&  (( "$age" < 30))
    then
        echo "Youngster. Get inside."
    else
        echo "Not eligible"
fi