#!/bin/bash

# Function using for loop
print_numbers_for() {
  echo "Using for loop:"
  for i in {1..6}
  do
    echo "$i"
  done
}

# Function using while loop
print_numbers_while() {
  echo "Using while loop:"
  i=1
  while [ $i -le 6 ]
  do
    echo "$i"
    ((i++))
  done
}

Devops() 
{
echo "Hello $1 students"
}


# Calling both functions
print_numbers_for
print_numbers_while
Devops "DevOps"

