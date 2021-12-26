#!/usr/bin/env python3

from datetime import datetime
with open('/home/jeet/freshstart/shell_script_tut/append.txt', 'a')  as myFile:
    myFile.write('\nAccessed on ' + str(datetime.now()))