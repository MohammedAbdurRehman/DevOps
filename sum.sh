#!/bin/bash

# Source the functions file
source accessing_file.sh

# Taking input from the user
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Calling functions
add $num1 $num2
subtract $num1 $num2

