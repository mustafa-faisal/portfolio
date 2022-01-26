#!/bin/bash

#echo "enter the password"




read -sp "enter the password :" pass_var

len="${#pass_var}"

if test $len -ge 8 ; then

    echo "$pass_var" | grep -q [0-9]

    if test $? -eq 0 ; then

    echo "$pass_var" | grep -q [A-Z]

    if test $? -eq 0 ; then

    echo "$pass_var" | grep -q [a-z]

    if test $? -eq 0 ; then

    echo "$pass_var" | grep -q [$,@,#,%]

    if test $? -eq 0 ; then

    echo "Strong password"

        else

        echo "weak password include special chars"

        fi

    else

    echo "weak password include lower case char"

    fi

    else

    echo "weak password include capital char"

    fi

    else

    echo "please include the numbers in password it is weak password"

    fi

else

echo "password length should be greater than or equal 8 hence weak password"

fi

touch secret.txt ### creating a text file for storing password in it

echo "$pass_var" | sha256sum >> secret.txt  ### Storing password into the text file

read -p "Please enter the foldername: " folderName
mkdir $folderName



mv secret.txt "$folderName"  ### moving secret.txt password stored file into new created folder
 
 

