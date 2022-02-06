#!/bin/bash

echo "Enter two numbers :"
read a
read b

echo "Enter your Choice for Arithmetic :"

BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
PURPLE="\e[35m"

echo -e "${BLUE}1. Addition${ENDCOLOR}"
echo -e "${GREEN}2. Subtraction${ENDCOLOR}"
echo -e "${RED}3. Multiplication${ENDCOLOR}"
echo -e "${PURPLE}4. Division${ENDCOLOR}"




read calculation
case $calculation in


1) echo -e "${BLUE}Addition of these numbers was your choice${ENDCOLOR}"
res=`echo $a + $b | bc`

;;

2) echo -e "${GREEN}Subtraction of these numbers was your choice${ENDCOLOR}" 
res=`echo $a - $b | bc`
;;

3) echo -e "${RED}Multiplication of these numbers was your choice${ENDCOLOR}"
 res=`echo $a \* $b | bc`
;;

4) echo -e "${PURPLE}Division of these numbers was your choice${ENDCOLOR}"
res=`echo "scale=2; $a / $b" | bc`
;;
*)
esac

echo "Result : $res"
