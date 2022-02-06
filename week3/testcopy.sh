#!/bin/bash

      BLUE="\e[34m"
      GREEN="\e[32m"
      RED="\e[91m"
      PURPLE="\e[92m"
      WHITE="\e[97"

echo -e "${RED}Enter the password :${ENDCOLOR}";  read -sp  "" pass_var;

hash1=`cat password/secret.txt`

hash2=`echo $pass_var | sha256sum`

if [ "$hash1" = "$hash2" ];
then

option=0
  while [ "$option" != 8 ];
  do
    echo -e "${GREEN}Access granted${ENDCOLOR}"
    echo -e "${BLUE}Select an option${ENDCOLOR}"

    echo -e  "${PURPLE}1. Create a folder${ENDCOLOR}"
    echo -e  "${PURPLE}2. Copy a folder${ENDCOLOR}"
    echo -e  "${PURPLE}3. Set a password${ENDCOLOR}"
    echo -e  "${PURPLE}4. Caculator${ENDCOLOR}"
    echo -e  "${PURPLE}5. Create Week Folders${ENDCOLOR}"
    echo -e  "${PURPLE}6. Check Filenames${ENDCOLOR}"
    echo -e  "${PURPLE}7. Download a File${ENDCOLOR}"
    echo -e   "${WHITE}8.  Exit${ENDCOLOR}"

    ### Selecting option to perform actions #########
    read option;    
    case $option in   

    ####### option 1 Creating folder #########
    1) 
      read -p "Type the name of the folder you would like to create: " folderName
      mkdir "$folderName"
      ;;

    ####### option 2 Copying sn existing folder into New folder after creation of New folder ########
    2) 
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
    	;;

    ######## option3 setting a password and storing it into a new text file #########

    3) 
      read -p "Please enter the folder name" folderName ### folder creation variable
      mkdir $folderName
      ############### Folder Created ################


      ########### Asking the user to type secret password ##################
      read -sp "Please enter your secret password" pass_var ### taking variable to store the password

      touch secret.txt ### creating a text file for storing password in it

      echo "$pass_var" | sha256sum >> secret.txt  ### Storing password into the text file


      mv secret.txt "$folderName"  ### moving secret.txt password stored file into new created folder
			;;
    
    ### Option 4 ---- Calculator ------ ###
    4) echo "Enter two numbers :"
    	echo "First Value"
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
        1) 
          echo -e "${BLUE}Addition of these numbers was your choice${ENDCOLOR}"
          res=`echo $a + $b | bc`
          echo "Result : $res "
          ;;

        2) 
          echo -e "${GREEN}Subtraction of these numbers was your choice${ENDCOLOR}" 
          res=`echo $a - $b | bc`
          echo "Result : $res "
          ;;

        3) 
          echo -e "${RED}Multiplication of these numbers was your choice${ENDCOLOR}"
          res=`echo $a \* $b | bc`
          echo "Result : $res "
          ;;

        4) 
          echo -e "${PURPLE}Division of these numbers was your choice${ENDCOLOR}"
          res=`echo "scale=2; $a / $b" | bc`
          echo "Result : $res "
          ;;
        *)
          echo "incorrect input"
          ;;

        esac
    	;;

5) #### - Option 5 Creating more than one folder - ####
     read -p "Enter the starting and ending folder numbers: " first second

#For every number between the first argument and the second
     
for ((i = $first; i <= $second; i++))
     
do

    #Create a new folder for that number
   
    echo "Creating directory number $i"

    mkdir "week$i"
     
done
    	;;

    6)   
    	echo "6. Check Filenames"
    	for text in  `cat filenames.txt`
			do
        if [ -f $text ]; then
          echo "$text That file exists."
				elif [ -d $text ]; then
					echo "$text That's a directory"
				else
					echo "$text  I don't know what that is!"
					echo " Test your new script on"
  			fi
			done
			;;
    7)
    	echo "7. Download a File"
      read -p "Enter the location where you would like to download the file or exit to quit: " folderName

      if [ $folderName == "exit" ] 

then

  exit = 0

else

			read -p "Enter the website name : " website

      if [ -d $website ]; then
        echo "Cannot move as $website already exists in $folderName."
        

        else
        

			while [ $website != "exit" ]
			do
    		wget --limit-rate=1m --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla $website
     		##mv $website "$folderName"
        
        

        
        mv $website "$folderName"

        
      
    		
             
        read -p "Enter the another website name : " website

        

			done
    fi
fi
      ;;
    8)
    	echo "8. Exites"
      exit 1
      ;;
    *)
    	echo " Incorrect Input"
      echo " Exiting"
     	;;
	esac
		
done
	else
    echo "Access Denied"
    echo "Goodbye"
    exit 1
  fi







