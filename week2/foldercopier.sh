#!/bin/bash
read -p "type the name of the folder you would like to copy:" folderName

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