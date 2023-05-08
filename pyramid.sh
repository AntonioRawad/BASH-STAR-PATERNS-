#!/bin/bash
# pyramid shape 
# Prompt the user to enter the number of rows
# first loop will run as long as the row count 
# 2 inner loops , one for printing "SPACE"
# THE SECOND FRO THE STARS , WHICH EXPLAINED BY val of j equal or less than the doubles value of the raw , 
# in this case we give order to print number of stars based on the row value ????
read -p "Enter the number of rows: " rows

i=1
while [ $i -le $rows ]
do
  j=1
  while [ $j -le $((rows - i)) ]
  do
    echo -n "  "
    j=$((j+1))
  done

  j=1
  while [ $j -le $((2*i-1)) ]
  do
    echo -n "* "
    j=$((j+1))
  done

  echo
  i=$((i+1))
done
