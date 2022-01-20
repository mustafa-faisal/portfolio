#!/bin/bash
clear
echo enter a number
read x
### for loop with a varible ###
for ((a=1; a<=10; a++))
do

### Assigning another variable for storing the value ###
 b=$(($x*$a))


 echo "$x * $a = $b"
done
exit 0
