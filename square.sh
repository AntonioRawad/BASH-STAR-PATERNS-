#!/bin/bash
# full stars rectangle 
# Input size details 
read -p "Please enter the size of the rectangle: " size

# Outer loop for rows
i=0
while [[ $i -lt $size ]]
do
  # Inner loop for columns
  j=0
  while [[ $j -le $size ]]
  do
    echo -n "*"
    j=$(( j + 1 ))
  done
  echo
  i=$(( i + 1 ))
done