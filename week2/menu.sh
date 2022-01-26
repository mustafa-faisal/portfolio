#!/bin/bash

read -sp "Enter the password : " pass_var

hash1=`cat test/secret.txt`

hash2=`echo $pass_var | sha256sum`

if [ "$hash1" = "$hash2" ];
then
    echo "Access granted"
    echo "Select an option"

    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"



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






*)
esac

exit 0




else
    echo "Access Denied"
    echo "Goodbye"
    exit 1
fi