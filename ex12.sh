#!/bin/bash

# Filename: ex12.sh
#
# Problem: Make the code into a function and call function using cat, dog 
# and frog as an argument.

ex12 (){
echo The $1 chased it tail.
echo Then the $1 sat on a $2.
}

ex12 cat mat
ex12 dog kennel
ex12 frog lily  

