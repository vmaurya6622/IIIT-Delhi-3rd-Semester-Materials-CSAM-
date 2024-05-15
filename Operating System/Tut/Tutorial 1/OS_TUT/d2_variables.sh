#!/bin/bash

#This is how you would typically assign variable values.
COURSE="CSE-231 OS"

# Special Vars. 
#These are reserved variables that give information about the shell script.
echo "Script Name : $0"
echo "Script Argc : $#"
echo "Script Args : $@"
echo "Script Arg1 : $1"
echo "Exit Status : $?"
echo "User        : $USER"
echo "Current Dir : $PWD"
echo "Current Line: $LINENO"

# Substitution
# Using single quotes will give the output as : Single Quote $SOURCE. 
# Essentially, when using single course, we will not be able to access the variable's value.
# To access the variable's value, we need to use double quotes.

echo 'Single Quote $COURSE' 
echo "Double Quotes $COURSE"

# Command Substitution 

#When we use the format with the quotes, the output is stored as a string.
#When we use the format without the quotes, the output is stored in an array-like format after undergoing splitting.
#To access the other elements, we can use zero based indexing, with the output.Please take a note of the format

DATE_NO_QUOTES=( $(date) ) #format ( $(cmd) )
DATE_QUOTES=( "$(date)" )  #format ( "$(cmd)" )

echo "CMD Substitution with no quotes $DATE_NO_QUOTES"
echo "CMD Substitution with quotes $DATE_QUOTES"
echo "Accesing 2nd element of output ${DATE_NO_QUOTES[1]}" #format ${Var[index]}


