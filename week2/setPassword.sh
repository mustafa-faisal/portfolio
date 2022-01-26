#!/bin/bash

##### Creating the folder with asking the name of the folder #######################
read -p "Please enter the folder name" folderName
mkdir $folderName
############### Folder Created ################


########### Asking the user to type secret password ##################
read -sp "Please enter your secret password" pass_var ### taking variable to store the password

touch secret.txt ### creating a text file for storing password in it

echo "$pass_var" | sha256sum >> secret.txt  ### Storing password into the text file


mv secret.txt "$folderName"  ### moving secret.txt password stored file into new created folder
 