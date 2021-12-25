#! /bin/bash

echo -e "Enter the filename: \c"
read -r filename

# if [ -f "$filename" ]
#     then
#         if [ -w "$filename" ]
#             then
#                 echo "This is first leine which will be appneded to the file" >> "$filename"
#             else
#                 echo "File does not have write permission"
#         fi
#     else
#         echo "file does not exist"
# fi

# another menthod

if [ -f "$filename" ]
    then
        if [ -w "$filename" ]
            then
                echo "Start writing now and please enter ctrl+d when finished"
                cat  >> "$filename"
            else
                echo "File does not have write permission"
        fi
    else
        echo "file does not exist"
fi