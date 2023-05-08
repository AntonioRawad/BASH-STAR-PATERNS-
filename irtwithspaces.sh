# Input row details 
# Prompt to enter size 
read -p "Please enter the size of the triangle: " size

# Outer loop for rows
i=$size
while [ $i -gt 0 ]
do
  # Inner loop for columns
  j=1
  while [ $j -le $((size - i + 1)) ]
  do
    echo -n "$j"
    let j=$((j + 1))
  done

  echo
  echo

  let i=$((i - 1))
done
