#!/bin/bash

#--------------------------------------------VARIABLES--------------------------------------------

# Assigning variables
echo "Assigning variables..."
string_v="variable"
string_v2="This is also a variable"

int_v=76
float_v=12.471

echo "Done!"
echo    # Print an empty line


# Printing variables
echo "Printing variables: "
echo $string_v, $int_v
printf "$string_v2 \n$float_v\n"
echo    # Print an empty line


# Using a variable to reference a command
echo "Command as a variable: "
helloworld=$(echo "Hello World")
echo $helloworld
echo    # Print an empty line


# Finding the length of a string variable
echo "Math solutions as variables: "
string_length=${#string_v}
echo "String length is $string_length characters"
echo    # Print an empty line


# Adding the length of two variables together
math=$(($string_length+${#string_v2}))
echo "The length of both strings added together is $math"
echo    # Print an empty line

#--------------------------------------------ARRAYS--------------------------------------------

array=("this" "is" "an" "item" "in" "an" "array")

echo "The first element is: ${array[0]}"                        # First element
echo "The third through sixth elements are: ${array[@]:2:5}"    # Elements 3-7
echo "All elements in the array are: ${array[@]}"               # All elements
echo    # Print an empty line


# Print out array with "item" deleted
echo "Delete Item Method #1"
echo ${array[@]/"item"}
echo    # Print an empty line

echo "Delete Item Method #2"
echo ${array[@]/it*/}
echo    # Print an empty line

echo "Delete Item Method #3"
unset 'array[3]'    # Delete "item" from array completely
echo ${array[@]}    # Print out the whole array to make sure it worked
echo    # Print an empty line


# Add "new item" to array
echo "Add Item Method #1"
array=("${array[@]}" "new item")
echo ${array[@]}        # Print out the whole array to make sure it worked
unset 'array[6]'        # Remove the last item in the array to demonstrate the next command effectively
echo    # Print an empty line

echo "Add Item Method #2"
array+=('new item')
echo ${array[@]}        # Print out the whole array to make sure it worked