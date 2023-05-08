#!/bin/bash

# Decreasing right-sided triangle
#adding row using IF CONDITION 
#ADDING VALUE a $a tp print the value of j column each row 
# Input row details
# Prompt to enter size
# Outer loop for rows

# Prompt user to enter size
read -p "Please enter the size of the pattern: " size

# Outer loop for rows
i=$size
while [ $i -gt 0 ]
do
  # Inner loop for columns
  j=1
  while [ $j -le $i ]
  do
    echo -n "$j "
    let j=$((j + 1))
  done
  # Add an empty line after each row is printed
  echo ""

  let i=$((i - 1))
done
