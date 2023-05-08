#!/bin/bash

# Prompt the user to enter the number of rows and columns 
read -p "Enter the number of rows: " num_rows
read -p "Enter the number of columns: " num_cols

# start counter row 
i=1

# First loop will run as long as the row count
while ((i <= num_rows)); do

    # Initialize the column counter
    j=1

    # Second loop will print stars in the specific spaces
    while ((j <= num_cols)); do
        
        if ((i == 1 || i == num_rows || j == 1 || j == num_cols));
         then
        
            echo -n "*"
        else
          
            echo -n " "
        fi
        # Increment the column counter
         let j=$((j+1))
    done

    # Print a newline to end the row and start a new one
    echo ""

    # Increment the row counter
     let i=$((i+1))
done
