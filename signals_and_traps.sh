#! /bin/bash

echo "pid is $$"

# use below command to get more info
# man 7 signal

# Suppose when we ctrl+c or ctrl+z from terminal, it kills the script
# in such cases, we use trap command. It cathes such  signals (provided by userss from console), and before exiting the program,
# it does the stuff we ask it to.
# See below example:


#=====================================================
# this will execute whne it detectes exit 0
# trap "echo Exit command is detected"  0

# echo "hell world"
# exit 0

#=====================================================

sleep 20
trap "echo Have you pressed ctrl+c ?"  2
# doe not catch SIGKILL SIGSTOP