#!/bin/bash

# awk tutorial
# checks all the document line by line
# there are 4 steps:
    # scans file line by line
    # split each line into fileds/columns
    # compare input lines to pattern given
    # perfrom actions on matched line

# Syntax:
    # awk options 'selection criteria {action}' file
    # Options:
        # -f file : filename
        # -F field separator

# 1)
# it prints everything
# cat /home/jeet/freshstart/shell_script_tut/employees.csv | awk {print}

# 2)
# print all fileds
# cat /home/jeet/freshstart/shell_script_tut/employees.csv | awk '{print $0}'

# 3)
# print sepcified columns
# cat /home/jeet/freshstart/shell_script_tut/employees.csv | awk '{print $2, $3}'

# 4)
# print lines according to matched pattern (selection criteria and field sep)
# selection criteria is given by slash
# cat /home/jeet/freshstart/shell_script_tut/employees.csv | awk -F , '/IT_PRO/{print $2}'


# 5)
# print columns according to matched pattern in sepcifie column
# it will match seventh column with IT_PROD and will print second column
# cat /home/jeet/freshstart/shell_script_tut/employees.csv | awk -F , '$7~/IT_PROG/ {print $2}'
#  awk -F ,  '$7~/IT_PROG/ {print $2}'  employees.csv


# 6)
# print columns if specified field sstart with and end with charcter
# awk -F ,  '$7~/^I/ {print $2}'  employees.csv                               
# awk -F ,  '$7~/M$/ {print $2}'  employees.csv

# 7)
# AND, OR operator
# awk -F ,  '$7~/IT_PROG/ && $2~/Alexander/ {print $2}'  employees.csv
# awk -F ,  '$7~/IT_PROG/ || $7~/ST_MAN/ {print $2, $7}'  OFS=',' employees.csv

# AWK varaiables

# 8) 
    # System defined
    # User defined

#System defined
# NR, number of records
# it just numbers the records

# awk -F ',' '{print NR}' employees.csv


# 9)
# end number of records --> gives last number of record
# awk -F ',' 'END {print NR}' employees.csv

# NR with condition
# awk -F ',' 'NR<25 {print $2}' employees.csv

# 10)
# NR is used to omit recod number
# awk -F ',' 'NR%2 {print $2}' employees.csv   # omit even number

#11) NF -> number of non empy fileds
# awk -F ',' '{print NF}' employees.csv

# 12)
# print last NF
# awk -F ',' '{print $NF}' employees.csv

# 13)
# print any column from last
# awk -F ',' '{print $(NF-4)}' employees.csv  # print 5th last

# 14)
# print NR and NF along with filename
# awk -F ',' '{print FILENAME "\t" NR "--->" NF}' employees.csv

# 15)
# FNR file number of record
# awk -F ',' '{print FILENAME "\t" NR "--->" FNR}' employees.csv employees.csv

# 16)
# OFS --> output filed separati
# awk -F','  'BEGIN {OFS="|"} {print $1,$2,$3} ' employees.csv

# ORS
awk -F','  'BEGIN {ORS="\n\n\n"} {OFS="|"} {print $1,$2,$3} ' employees.csv

# 17) RS
# input recod separarpor