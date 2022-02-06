#!/bin/bash

read -sp "Enter the password : " pass_var

hash1=`cat password/secret.txt`

hash2=`echo $pass_var | sha256sum`

if [ "$hash1" = "$hash2" ];
then
    echo "Access granted"
    echo "Select an option"

    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    echo "4. Caculator"
    echo "5. Create Week Folders"
    echo "6. Check Filenames"
    echo "7. Download a File"
    echo "8. Exit"



### Selecting option to perform actions #########
read option;    
case $option in   

####### option 1 Creating folder #########
1) read -p "Type the name of the folder you would like to create: " folderName
mkdir "$folderName"
;;

####### option 2 Copying sn existing folder into New folder after creation of New folder ########
2) read -p "type the name of the folder you would like to copy:" folderName

#if the name is a valid directory
if [ -d "$folderName" ]; then

read -p "type the name of destination folder:" newFolderName

#copy it to new created folder
cp -r "$folderName" "$newFolderName"

elif [[ "$newFolderName" -eq "$newFoldername"  ]]; then


echo "folder is already exist"


else

#otherwise, print an error
echo "I couldn't find the folder"


fi
;;

######## option3 setting a password and storing it into a new text file #########

3) read -p "Please enter the folder name" folderName ### folder creation variable
mkdir $folderName
############### Folder Created ################


########### Asking the user to type secret password ##################
read -sp "Please enter your secret password" pass_var ### taking variable to store the password

touch secret.txt ### creating a text file for storing password in it

echo "$pass_var" | sha256sum >> secret.txt  ### Storing password into the text file


mv secret.txt "$folderName" ;; ### moving secret.txt password stored file into new created folder













### Calculator ###
4) read Calculator

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

echo "incorrect input";;

esac


echo "Result : $res"




else
    echo "Access Denied"
    echo "Goodbye"
    exit 1
fi