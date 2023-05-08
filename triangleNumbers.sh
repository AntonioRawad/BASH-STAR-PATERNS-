#!/bin/bash

# Decreasing right-sided triangle
# Input row details 
# Prompt to enter size 
read -p "Please enter the size of the triangle: " size

# Outer loop for rows
i=$size
while [ $i -gt 0 ]
do
  # Inner loop for columns
  j=1
  while [ $j -eq $i ]
  do
    echo -n "$j "
    else 
    while [ $j -le $i ]
    do
    echo " "
done 
     let j=$((j + 1))
  done

  echo
   let i=$((i - 1))
done
