#! /bin/bash


# -e flag , to enable takig backslahes, check file  etc.
# -f flag, if file exists and a regular file
#  -d flag, to check if directory
# -s to check if file is empty
# -b to check if file is block specil(i.e. binary file , like image, video etc.)
# -c to check if file is character special file
# -r, to check if file has read permission
# -w, to check if file has write permission
# -x, to check if file has execute permission


echo -e "Please enter the filename: \c"      # if I don't mention flag -e, it will take \c literal
read -r filename

#=====================================================
# if [ -e "$filename" ]
# then
#     echo "$filename is present"
# else
#     echo "Not found"
# fi
#=====================================================

#=====================================================
if [ -f "$filename" ]
then
    echo "$filename is present"
else
    echo "Not found"
fi
#=====================================================