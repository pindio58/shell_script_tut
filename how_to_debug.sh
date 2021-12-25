#! /bin/bash

# run scrip using bash -x
# usage: bash -x how_to_debug.sh
# other way is put -x in shebang
# anothery way is:
    # set-x
# it gives more verbose
# now, i have left righ bracket on purpose

set -x                                      # here dubugging starts
val=1
if (( "$val" < 4 ))
    set +x                                  # here debugging stops
    then
        echo "done , pal!"
fi