#!/bin/bash

# Arithmetic Comparisons

#+---------------+----------+
#| Bash Operator | Operator |
#+---------------+----------+
#| -lt           | <        |
#| -gt           | >        |
#| -le           | <=       |
#| -ge           | >=       |
#| -eq           | ==       |
#| -ne           | !=       |
#+---------------+----------+

#Here we are taking as input the numbers and checking if they are equal. Please note the following format pointers:
# If conition's statement is in surrounded by the box brackets []. Also there is a colon after it followed by the 'do' keyword. 
# To end the ifelse clause, we write the fi key word.
echo "Enter two numbers: "
read NUM1
read NUM2
if [ $NUM1 -eq $NUM2 ]; then
    echo "Both values are equal"
else
    echo "Values are not equal"
fi

# String Comparisons


#+------------------------+
#| Bash Operator Operator |
#+------------------------+
#| = equal                |
#| != not equal           |
#| < less than            |
#| > greater than         |
#| -n s1 not empty        |
#| -z s1 empty            |
#+------------------------+

#This is case sensitive, so 'Hello' and 'hello' are not equal
echo "Enter two strings :"
read STR1
read STR2
if [ $STR1 = $STR2 ]; then
    echo "Strings are equal"
else
    echo "Strings not equal"
fi

