#!/bin/bash
# decreasing triangle 
# Input row details 
# Prompt to enter size 

read -p "Please enter the size of the triangle: " size

# Outer loop for rows
i=0
while [ $i -lt $size ]
do
  # Inner loop for columns
  j=0
  while [[ $j -lt $((size - i)) ]]  # the formula out put in our case the size - current row to give order to print star 
    do
    echo -n "* "
    j=$((j + 1))
  done
  echo
  i=$((i + 1))
done
