#!/bin/bash
# enter 2 variables . one for the rows and one for the column 
#start by calculating the 2 sides of each row 

# Prompt the user to enter the size of the table
read -p "Enter the number of rows: " num_rows
read -p "Enter the number of columns: " num_cols

# Calculate the starting and ending column positions for each row
i=0
while ((i < num_rows)); do
    starts[$i]=$(( (num_cols + 1) / 2 - i )) # we found it by dividing adding 1 to col no. /2 
    #"space"  must be printed befor this value 
    ends[$i]=$(( num_cols - i )) # clear from the char that colum decrese by value of the row where we pring "SPACES "
    i=$((i+1))
done

# Print the table
#outer loop 
i=0
while ((i < num_rows)); do
#inner loop 
    j=0
    while ((j < num_cols)); do
        if (( j >= starts[$i] && j < ends[$i] )); then
            echo -n "* "
        else
            echo -n "  "
        fi
    # decide j value for next loop     
        j=$((j+1))
    
    done
    # the print empty to end the row and start new one 
    echo ""
    # decide values for i in next loop 
    i=$((i+1))
done
