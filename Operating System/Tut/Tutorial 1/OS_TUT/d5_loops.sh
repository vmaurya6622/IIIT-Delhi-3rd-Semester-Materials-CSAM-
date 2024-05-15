#!/bin/bash




# For Loop

#When iterating through the output of the ls command we will need to store the output with the quotes format for the 'for loop'. 
#It is highly reccomended that you try experimenting without the quotes. Try to understand why one works and the other doesnt !!

SCRIPT_NAMES=( "$(ls)" )
echo "Enumerate filenames using for loop :"
for SCRIPT in $SCRIPT_NAMES; do
    echo $SCRIPT
done


# While Loop

# When iterating through the while loop, we use the command substitution without quotes. 
# Because with this format, the output is stored in an array. 
# We simply change the index count and access the element.
# Again, please try to understand why the format without quotes is used and try to experiment with the other format.

echo "Enumerate filenames using while loop :"
# Get the number of files and subtract 1 (we start with 0 here)
SCRIPT_NAMES=( $(ls) )
COUNT=$((${#SCRIPT_NAMES[@]} - 1))

# Execute while block until count > 0
while [ $COUNT -gt 0 ]; do
    echo ${SCRIPT_NAMES[$COUNT]}
    # Redeclare count with new value
    let COUNT=COUNT-1
done

# Loop Until
echo "Enumerate filenames using until :"
CUR_COUNT=0
echo "COUNT value : $COUNT"
# Will execute only once
until [ $CUR_COUNT -ne $COUNT ]; do
    echo ${SCRIPT_NAMES[$COUNT]}
    let CUR_COUNT=CUR_COUNT+1
done

