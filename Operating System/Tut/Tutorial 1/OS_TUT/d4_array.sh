#!/bin/bash

# Array of 4 elements
ARRAY=('Gentoo' 'Arch' 'Artix' 'Nobara')

# Number of elements in Array
ELEMENTS=${#ARRAY[@]}

# Print all the elements
# Please take a note of how there are two brackets in the for loop. 
# This is used in integer arithmetic. 
# You can perform assignments, logical operations, and mathematic operations inside these parentheses.
# However, do note that there is no output. 
# Any variable changes that happen inside them will stick, but don't expect to be able to assign the result to anything.
# Can you think of a way to store the output performed in double paranthesis? Hint:Think of the basic commands and try to guess.

echo "List of Power Distros :"
for (( i=0;i<$ELEMENTS;i++)); do
    echo ${ARRAY[$i]}
done
