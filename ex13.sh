#!/bin/bash

# Filename: ex13.sh
#
# Problem: Add writing to an array and reading from the array.

echo Please type in 3 foods you like:
for x in `seq 0 2`
do
	read array[x]
done

PS3="Now Select the food you like the best: "
select option in ${array[*]};
do
  echo "The option you have selected is: $option"
  break;
done

