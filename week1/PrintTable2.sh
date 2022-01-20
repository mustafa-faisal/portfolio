#!/bin/bash
#While loop
clear

a=$1
n=1

# giving condition 
while [ $n -le 10 ]
do

#mulplication of provided number and evaluation
mul=$(expr $a \* $n)

#printing the table
echo "$a x $n= $mul"


n=`expr $n + 1 `

done
exit 0
